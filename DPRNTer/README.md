## DPRNTer.py
<p align = "center">

![DPRNTer GUI v1][gui-v1-link]

</p>

<p align = "center">

Este script genera una GUI para que el usuario seleccione
un archivo de texto .nc o .txt. El propósito final de
este script es leer y modificar dicho archivo para
agregar las instrucciones DPRNT necesarias y así extraer
información relevante de controladores HAAS de
nueva generación.

</p>


### Sobre el programa
El programa es una parte de todo un proyecto de la concentración Sistemas y
Tecnologías 4.0. El objetivo de este es extraer información de controladores HAAS de
las máquinas presentes en la planta de Laser & Manufacturing, nuestro socio formador.

### Herramientas
* [![Python][python-badge]][python-link]
* [![PySimpleGUI][pysimplegui-badge]][pysimplegui-link]

### Setup
Descarga en tu equipo la aplicación para [Windows (64-bt)][windows-app-link] o
[Unix (64-bit)][unix-app-link]. Para ejecutarla, da doble click (Nota 1).

### Instrucciones de uso
1. Abre la app
2. Selecciona el archivo a procesar (.nc o .txt) dando click en "Buscar".
3. Selecciona las variables a extraer del proceso de maquinado marcando las casillas
correspondientes (todas están habilitadas por default).
4. Da clik en "Procesar"
5. Repetir a partir del paso 2 por cada archivo que sea necesario procesar.


### Notas
1. Es posible que en sistemas Windows aparezca una advertencia de seguridad. Da click
en Mostrar más->Correr de todas formas. El script es completamente seguro, pero en el
momento de desarrollo no se cuenta con una certificación de seguridad. El script puede
ser revisado en el repositorio.

<p align = "">(<a href = "#readme-top">Regresar al inicio)</p>

<!--
#### Primer prototipo de la interfaz
![First GUI Draft][GUI-Draft_Link]
-->
[gui-draft-link]: https://github.com/aaronrt21/SistemasTecnologias4.0/blob/main/Images/GUIDraft.png
[gui-v1-link]: https://github.com/aaronrt21/SistemasTecnologias4.0/blob/main/Images/GUIv1.png
[python-link]: https://www.python.org/
[python-badge]: https://img.shields.io/badge/python-v3.8-blue
[pysimplegui-link]: https://www.pysimplegui.org/en/latest/
[pysimplegui-badge]: https://img.shields.io/badge/PySimpleGUI-v4.60-blue
[windows-app-link]: https://github.com/aaronrt21/SistemasTecnologias4.0/blob/main/DPRNTer/processnc.exe
[unix-app-link]: https://github.com/aaronrt21/SistemasTecnologias4.0/blob/main/DPRNTer/processnc
[laser-link]: https://www.lasermanufactura.com/