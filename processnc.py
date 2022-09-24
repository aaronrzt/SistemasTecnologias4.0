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
    # Process the file only if it's the right format and at least 1 checkbox is marked.
    elif event == "Procesar":
        #Abrir el archivo y crear uno nuevo
        ncprogram = values["-IN-"]
        checkbox = [values["-IN1-"], values["-IN2-"]]
        checkbox_txt = ["Checkbox1 was enabled!", "Checkbox2 was enabled!"]
        if (ncprogram == ""):
            sg.Popup("Por favor, seleccione un archivo.", title = "Error")
        
        else:
            print("Input file: \n" + ncprogram)
            if not any(checkbox):
                sg.Popup("Por favor, seleccione al menos una variable de interés del documento.", title = "Error")

            else:

                if ncprogram[-3:]==".nc":
                    newfile = ncprogram.replace('.nc', '') + "DPRNT.nc"
                    with open(ncprogram) as f_old, open(newfile, "w") as f_new:
                        for line in f_old:
                            f_new.write(line)
                            if 'identifier' in line:
                                if checkbox[0]:
                                    f_new.write("\n" + checkbox_txt[0] + "\n")
                                if checkbox[1]:
                                    f_new.write("\n" + checkbox_txt[1] + "\n")
                                os.rename(ncprogram, ncprogram.replace('.nc', '') + "_prev.nc")
                                os.rename(newfile, ncprogram)
                                sg.PopupNoTitlebar("Proceso completado con éxito.")
                            else:
                                print("No identifier found.")

                elif ncprogram[-4:] == ".txt":
                    newfile = ncprogram.replace('.txt', '') + "DPRNT.txt"
                    with open(ncprogram) as f_old, open(newfile, "w") as f_new:
                        for line in f_old:
                            f_new.write(line)
                            if 'identifier' in line:
                                if checkbox[0]:
                                    f_new.write("\n" + checkbox_txt[0] + "\n")
                                if checkbox[1]:
                                    f_new.write("\n" + checkbox_txt[1] + "\n")
                                os.rename(ncprogram, ncprogram.replace('.txt', '') + "_prev.txt")
                                os.rename(newfile, ncprogram)
                                sg.PopupNoTitlebar("Proceso completado con éxito.")
                            else:
                                print("No identifier found.")
                                
                else:
                    sg.Popup("Por favor, seleccione un archivo .nc o .txt", title = "Error")
        