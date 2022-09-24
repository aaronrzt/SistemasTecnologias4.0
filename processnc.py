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
sg.theme("SystemDefault")

#Create GUI elements
layout = [[sg.Text("Selecciona un archivo (.nc/.txt): ")],
          [sg.FileBrowse("Buscar...", key = "-IN-", tooltip = "Selecciona el archivo .nc o .txt a ser procesado."), sg.Text("")],
          [sg.Text("")],
          [sg.Text("Variables a leer con el DPRNT:", )],
          [sg.Checkbox('Checkbox 1', default = True, key = "-IN1-")],
          [sg.Checkbox('Checkbox 2', default = True, key = "-IN2-")],
          [sg.Text("")],
          [sg.Button("Procesar", tooltip = "Agregar instrucciones DPRNT al archivo .nc o .txt"),
           sg.Text("                                                                          "), sg.Button("Cerrar")]
         ]

#Insert GUI elements into window
window = sg.Window("DPRNTer para archivos .nc o .txt", layout, size = (500, 650))

while True:
    # Get variables from the GUI elements
    event, values = window.read()
    # End the program if X or "Cerrar" button is pressed
    if (event == sg.WIN_CLOSED or event == "Cerrar"):
        break
    # Process the file when the "Procesar" button is pressed only if it's the right format and at least 1 checkbox is marked.
    elif event == "Procesar":
        # Store the file path
        ncprogram = values["-IN-"]
        # Store the checkboxes values
        checkbox = [values["-IN1-"], values["-IN2-"]]
        # Array with text to be inserted into file for each checkbox
        checkbox_txt = ["Checkbox1 was enabled!", "Checkbox2 was enabled!"]
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
                            if 'identifier' in line:
                                # Trigger found!
                                line_fnd = True
                                # Insert the text for each marked checkbox
                                if checkbox[0]:
                                    f_new.write("\n" + checkbox_txt[0] + "\n")
                                if checkbox[1]:
                                    f_new.write("\n" + checkbox_txt[1] + "\n")
                                # Rename the new file as the original file, add _prev to the original file's name
                                os.rename(ncprogram, ncprogram.replace('.nc', '') + "_prev.nc")
                                os.rename(newfile, ncprogram)
                                # Success PopUp
                                sg.PopupNoTitlebar("Proceso completado con éxito.")
                        # No trigger line found within file.
                        if not(line_fnd):
                            # Rename the new file as the original file, add _prev to the original file's name
                            os.rename(ncprogram, ncprogram.replace('.nc', '') + "_prev.nc")
                            os.rename(newfile, ncprogram)
                            # No joy PopUp
                            sg.Popup("No se encontró ningún '%', no habrá cambios en el programa.", title = "Alerta")  
                            print("No identifier found.")

                # Or is it a .txt?
                elif ncprogram[-4:] == ".txt":
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
                            if 'identifier' in line:
                                # Trigger found!
                                line_fnd = True
                                # Insert the text for each marked checkbox
                                if checkbox[0]:
                                    f_new.write("\n" + checkbox_txt[0] + "\n")
                                if checkbox[1]:
                                    f_new.write("\n" + checkbox_txt[1] + "\n")
                                # Rename the new file as the original file, add _prev to the original file's name
                                os.rename(ncprogram, ncprogram.replace('.txt', '') + "_prev.txt")
                                os.rename(newfile, ncprogram)
                                # Success PopUp
                                sg.PopupNoTitlebar("Proceso completado con éxito.")
                        # No trigger line found within file.
                        if not(line_fnd):
                            # Rename the new file as the original file, add _prev to the original file's name
                            os.rename(ncprogram, ncprogram.replace('.nc', '') + "_prev.nc")
                            os.rename(newfile, ncprogram)
                            # No joy PopUp
                            sg.Popup("No se encontró ningún '%', no habrá cambios en el programa.", title = "Alerta")  
                            print("No identifier found.")
                                
                else:
                    sg.Popup("Por favor, seleccione un archivo .nc o .txt", title = "Error")
        