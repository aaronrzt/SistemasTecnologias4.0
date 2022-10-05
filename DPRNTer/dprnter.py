#Import necessary libraries
import PySimpleGUI as sg
import os

"""
Select the GUI theme:
LightYellow     Reddit          LightGreen3         LightBrown      Dark
DarkBlue15      Black           LightGreen4         DarkPurple      BrownBlue
Tan             TealMono        DarkBlue15          DarkGreen       BrightColors
DarkTeal2       TanBlue         Tan                 LightPurple     BlueMono
Topango         LightGreen1     SystemDefault       LightGrey       BluePurple
LightBrown5     LightGreen2     LightBlue5          Green           DarkRed
DarkBlack
"""
sg.theme("Reddit")

#Create GUI elements
layout = [[sg.Text("Selecciona un archivo (.nc/.txt): ")],
          [sg.FileBrowse("Buscar...", key = "-IN-", tooltip = "Selecciona el archivo .nc o .txt a ser procesado."), sg.Text("")],
          [sg.Button("✓", tooltip = "Validar el archivo seleccionado.")],
          [sg.Text("")],
          [sg.Text("Variables a leer con el DPRNT:", )],
          [sg.Checkbox('Tiempo de ciclo', default = True, key = "-IN1-", tooltip = "Agrega la instrucción de imprimir tiempo de ciclo (#3021).")],
          [sg.Checkbox('Override de FEED HOLD', default = True, key = "-IN2-", tooltip = "Agrega la instrucción de imprimir Override de FEED HOLD (#3004).")],
          [sg.Checkbox('Feedrate Estimado', default = True, key = "-IN3-", tooltip = "Agrega la instrucción de imprimir Feedrate Estimado (#50801).")],
          [sg.Checkbox('Nivel de enfriador', default = True, key = "-IN4-", tooltip = "Agrega la instrucción de imprimir nivel restante de enfriador (#13013).")],
          [sg.Checkbox('RPMs del husillo', default = True, key = "-IN5-", tooltip = "Agrega la instrucción de imprimir RPMs del husillo (#3027).")],
          [sg.Text("")],
          [sg.Button("Procesar", tooltip = "Agregar instrucciones DPRNT al archivo .nc o .txt."),
           sg.Text("                                                                                                                 "), sg.Button("Cerrar", tooltip = "Cierra el programa.")]
         ]

#Insert GUI elements into window
window = sg.Window("DPRNTer para archivos .nc o .txt", layout, size = (650, 350))
completed = False
validated = False
while True:
    # Get variables from the GUI elements
    event, values = window.read()
    # End the program if X or "Cerrar" button is pressed
    if (event == sg.WIN_CLOSED or event == "Cerrar"):
        break
    elif event == "✓":
        ncprogram = values["-IN-"]
        if ncprogram != "":
            if ncprogram[-3:]==".nc" or ncprogram[-4:]==".txt":
                validated = True
                sg.Popup("Archivo validado con éxito.", title = "Aviso")
            else:
                sg.Popup("Por favor, seleccione un archivo .nc o .txt.", title = "Error")
        else:
            sg.Popup("Por favor, seleccione un archivo.", title = "Error")
    elif event == "Procesar" and validated == False:
        event = ""
        sg.Popup("Por favor, valida el archivo seleccionado.", title = "Error")
    # Process the file when the "Procesar" button is pressed only if it's the right format and at least 1 checkbox is marked.
    elif event == "Procesar" and validated == True:
        event = ""
        # Store the file path
        ncprogram = values["-IN-"]
        # Store the checkboxes values
        checkbox = [values["-IN1-"], values["-IN2-"], values["-IN3-"], values["-IN4-"], values["-IN5-"]]

        # Array with text to be inserted into file for each checkbox
        # HAAS Macrovariables table: https://www.haascnc.com/service/online-operator-s-manuals/mill-operator-s-manual/mill---macros.html
        checkbox_txt = ["DPRNT[CYCLE START TIMER: #3021[60]]", "DPRNT[OVERRIDE FEED HOLD CONTROL: #3004[60]]", "DPRNT[ESTIMATED FEEDRATE: #5081[60]]", "DPRNT[COOLANT LEVEL: #13013[60]]", "DPRNT[SPINDLE RPM: #3027[60]]"]
        # No file was selected
        if (ncprogram == ""):
            sg.Popup("Por favor, seleccione un archivo.", title = "Error")
        
        # A file was selected
        else:
            print("Input file: \n" + ncprogram)
            # ...but no checkbox was marked
            if not any(checkbox):
                sg.Popup("Por favor, seleccione al menos una variable de interés del documento.", title = "Error")

            # File selected and checkbox marked
            else:
                # Boolean flag, has a trigger line been found?
                line_fnd = False

                # Is the file a .nc?
                if ncprogram[-3:]==".nc":
                    # Create aux file to be used while going through original file
                    # fileDPRNT.nc
                    newfile = ncprogram.replace('.nc', '') + "DPRNT.nc"
                    
                    # Open original and aux file
                    with open(ncprogram) as f_old, open(newfile, "w") as f_new:
                        # Go through every line within the original file
                        for line in f_old:
                            # Copy the original file's contents into the new file
                            f_new.write(line)

                            # Does the current line coincide with the trigger line?
                            if '%' in line and completed == False:
                                # Trigger found!
                                line_fnd = True
                                # Insert the text for each marked checkbox
                                f_new.write("\n(DPRNTer start)")
                                # Imprime fecha del proceso actual
                                f_new.write("\nDPRNT[FECHA (AAMMDD): #3011]\n")
                                if checkbox[0]:
                                    f_new.write("\n" + checkbox_txt[0] + "\n")
                                if checkbox[1]:
                                    f_new.write("\n" + checkbox_txt[1] + "\n")
                                if checkbox[2]:
                                    f_new.write("\n" + checkbox_txt[2] + "\n")
                                if checkbox[3]:
                                    f_new.write("\n" + checkbox_txt[3] + "\n")
                                if checkbox[4]:
                                    f_new.write("\n" + checkbox_txt[4] + "\n")
                                f_new.write("(DPRNTer end)\n\n")
                                # Rename the new file as the original file, add _prev to the original file's name
                                os.rename(ncprogram, ncprogram.replace('.nc', '') + "_prev.nc")
                                os.rename(newfile, ncprogram)
                                completed = True
                                validated = False
                                # Success PopUp
                                sg.Popup("Programa completado con éxito.", title = "Aviso") 
                                
                                
                                
                        # No trigger line found within file.
                        if not(line_fnd):
                            # Rename the new file as the original file, add _prev to the original file's name
                            os.rename(ncprogram, ncprogram.replace('.nc', '') + "_prev.nc")
                            os.rename(newfile, ncprogram)
                            # No joy PopUp
                            sg.Popup("No se encontró ningún '%', no habrá cambios en el programa.", title = "Alerta")  
                            print("No identifier found.")

                # Or is it a .txt?
                elif ncprogram[-4:] == ".txt" and validated == True:
                    # Create aux file to be used while going through original file
                    # fileDPRNT.txt
                    newfile = ncprogram.replace('.txt', '') + "DPRNT.txt"
                    # Boolean flag, has an id line been found?
                    line_fnd = False
                    # Open original and aux file
                    with open(ncprogram) as f_old, open(newfile, "w") as f_new:
                        # Go through every line within the original file
                        for line in f_old:
                            # Copy the original file's contents into the new file
                            f_new.write(line)
                            # Does the current line coincide with the trigger line?
                            if '%' in line and completed == False:
                                # Trigger found!
                                line_fnd = True
                                # Insert the text for each marked checkbox
                                if checkbox[0]:
                                    f_new.write("\n" + checkbox_txt[0] + "\n")
                                if checkbox[1]:
                                    f_new.write("\n" + checkbox_txt[1] + "\n")
                                if checkbox[2]:
                                    f_new.write("\n" + checkbox_txt[2] + "\n")
                                if checkbox[3]:
                                    f_new.write("\n" + checkbox_txt[3] + "\n")
                                if checkbox[4]:
                                    f_new.write("\n" + checkbox_txt[4] + "\n")
                                # Rename the new file as the original file, add _prev to the original file's name
                                os.rename(ncprogram, ncprogram.replace('.txt', '') + "_prev.txt")
                                os.rename(newfile, ncprogram)
                                completed = True
                                validated = False

                                # Success PopUp
                                sg.Popup("Programa completado con éxito.", title = "Aviso") 
                        # No trigger line found within file.
                        if not(line_fnd):
                            if ncprogram[-3:]==".nc":
                                # Rename the new file as the original file, add _prev to the original file's name
                                os.rename(ncprogram, ncprogram.replace('.nc', '') + "_prev.nc")
                                os.rename(newfile, ncprogram)
                            elif ncprogram[-4:] == ".txt":
                                # Rename the new file as the original file, add _prev to the original file's name
                                os.rename(ncprogram, ncprogram.replace('.txt', '') + "_prev.txt")
                                os.rename(newfile, ncprogram)
                            # No joy PopUp
                            sg.Popup("No se encontró ningún '%', no habrá cambios en el programa.", title = "Alerta")  
                            print("No identifier found.")
                                
                else:
                    sg.Popup("Por favor, seleccione un archivo .nc o .txt", title = "Error")
        