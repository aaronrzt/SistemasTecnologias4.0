#Import necessary libraries
import PySimpleGUI as sg

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
          [sg.Button("Procesar", tooltip = "Agregar instrucciones DPRNT al archivo .nc o .txt"),
           sg.Text("                                                                          "), sg.Button("Cerrar")]
         ]

#Insert GUI elements into window
window = sg.Window("DPRNTer para archivos .nc o .txt", layout, size = (500, 150))

while True:
#Display the GUI window
    event, values = window.read()
    if (event == sg.WIN_CLOSED or event == "Cerrar"):
        break
    elif event == "Procesar":
        #Abrir el archivo y crear uno nuevo
        ncprogram = values["-IN-"]
        if (ncprogram == ""):
            sg.Popup("Por favor, seleccione un archivo.", title = "Error")
        
        else:
            print("Input file: \n" + ncprogram)
            if ncprogram[-3:]==".nc":
                newfile = ncprogram.replace('.nc', '') + "DPRNT.nc"
                with open(ncprogram) as f_old, open(newfile, "w") as f_new:
                    for line in f_old:
                        f_new.write(line)
                        if 'identifier' in line:
                            f_new.write("\nextra stuff\n")
                            sg.PopupNoTitlebar("Proceso completado con éxito. Archivo resultante:\n" + newfile)
                        else:
                            print("No identifier found.")
            elif ncprogram[-4:] == ".txt":
                newfile = ncprogram.replace('.txt', '') + "DPRNT.txt"
                with open(ncprogram) as f_old, open(newfile, "w") as f_new:
                    for line in f_old:
                        f_new.write(line)
                        if 'identifier' in line:
                            f_new.write("\nextra stuff\n")
                            sg.PopupNoTitlebar("Proceso completado con éxito. Archivo resultante:\n" + newfile)
                        else:
                            print("No identifier found.")
            else:
                sg.Popup("Por favor, seleccione un archivo .nc o .txt", title = "Error")
        