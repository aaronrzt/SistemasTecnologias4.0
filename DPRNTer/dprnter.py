#Import necessary libraries
from json import tool
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
          [sg.Text("")],
          [sg.Button("Procesar", tooltip = "Agregar instrucciones DPRNT al archivo .nc o .txt."),
           sg.Text("                                                                                                                 "), sg.Button("Cerrar", tooltip = "Cierra el programa.")]
         ]

#Insert GUI elements into window
window = sg.Window("DPRNTer para archivos .nc o .txt", layout, size = (650, 150))

# HAAS Macrovariables table: https://www.haascnc.com/service/online-operator-s-manuals/mill-operator-s-manual/mill---macros.html

# Dictionary that stores the text to be used in each DPRNT statement.
dprnt = {
            "date":    "DPRNT[DATE*(AAMMDD):*#3011]\n",
            "time":     "DPRNT[TIME*(HHMMSS):*#3021[60]]\n",
            "feedrate": "DPRNT[ESTIMATED*FEEDRATE:*#5081[60]]\n",
            "coolant": "DPRNT[COOLANT*LEVEL:*#13013[60]]\n"
        }
        
# Find current tool number
def dprnt_tool(line):
    # Find 'T' index within line
    tool_i = line.find("T") + 1
    
    # Get tool number (Any number after the T all the way to the end of line)
    tool_no = line[tool_i:]
    print("\nTool number detected: " + tool_no)

    # Get the text to be inserted into the .nc file.
    aux_tool_text = "\nDPRNT[CURRENT*TOOL:*" + str(tool_no) + "]"
    tool_text = ''.join(aux_tool_text.splitlines())
    return tool_text
    

while True:
    # Get variables from the GUI elements
    event, values = window.read()

    if (event == sg.WIN_CLOSED or event == "Cerrar"):
        break

    elif event == "Procesar":
        event = ""

        # Store the file path
        ncprogram = values["-IN-"]

        # No file was selected
        if (ncprogram == ""):
            sg.Popup("Por favor, seleccione un archivo.", title = "Error")

        else:
            # Is file .nc or .txt?
            if ncprogram[-3:]==".nc" or ncprogram[-4:]==".txt":

                line_cnt = 0
                found_cnt = 0
                checked_prcnt = False

# ---------------------------------WORK WITH FILE--------------------------------------------
              
                # Create aux file to be used while going through original file
                if ncprogram[-3:]==".nc":
                    newfile = ncprogram.replace('.nc', '') + "DPRNT.nc"
                else:
                    newfile = ncprogram.replace('.txt', '') + "DPRNT.txt"

                # Open original and aux file
                with open(ncprogram) as f_old, open(newfile, "w") as f_new:
                    # Go through every line within the original file
                    for line in f_old:

                        # Copy the original file's contents into the new file
                        f_new.write(line)

                        # Program start
                        if '%' in line and checked_prcnt == False:
                            # Print current date
                            f_new.write(dprnt["date"])
                            # Print current time
                            f_new.write(dprnt["time"])
                            # Print current coolant level
                            f_new.write(dprnt["coolant"])
                            found_cnt += 1
                            checked_prcnt = True

                        # Tool change
                        elif 'T' in line and 'M6' not in line and '(' not in line:
                            # Print current time
                            f_new.write(dprnt["time"])
                            # Print current tool number
                            f_new.write(dprnt_tool(line) + "\n")
                            # Print current feedrate
                            f_new.write(dprnt["feedrate"])
                            found_cnt += 1

                        # End of program
                        elif 'M30' in line:
                            # Print current date
                            f_new.write(dprnt["date"])
                            # Print current time
                            f_new.write(dprnt["time"])
                            # Print current coolant level
                            f_new.write(dprnt["coolant"])
                            # Print current feedrate
                            f_new.write(dprnt["feedrate"])
                            found_cnt += 1

                        line_cnt += 1
                    f_old.close()
                    f_new.close()
                    # Rename the new file as the original file, add _prev to the original file's name
                    if ncprogram[-3:]==".nc":
                        os.rename(ncprogram, ncprogram.replace('.nc', '') + "_prev.nc")
                    else:
                        os.rename(ncprogram, ncprogram.replace('.txt', '') + "_prev.txt")
                    os.rename(newfile, ncprogram)
                    print("\nOriginal file line count: " + str(line_cnt))
                    sg.Popup("Programa completado con éxito.", title = "Aviso") 

# ------------------------WORK WITH SOMETHING OTHER THAN A .NC OR .TXT  FILE-----------------

            else:
                sg.Popup("Por favor, seleccione un archivo .nc o .txt.", title = "Error") 