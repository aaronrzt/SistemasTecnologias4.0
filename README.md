<a name = "readme-top"></a>

# Sistemas y Tecnologias 4.0

![Project Info. Cycle][project-pic]

Repositorio de scripts desarrollados para la concentración de Sistemas y Tecnologías 4.0. En este proyecto se pretende
desarrollar un prototipo de sistema de Industria 4.0 para
optimizar los procesos de manufactura de nuestro socio
formador, [Laser & Manufacturing][laser-link].
Se han proyectado dos componentes principales para este
prototipo:
* **Sistema embebido**: Sistema que integra diferentes tipos
de sensores para recabar datos de la máquina CNC y
mandarlos por medio del protocolo MQTT a una Raspberry Pi.
* **Raspberry Pi**: Mini-computadora que recibe datos tanto
de los sensores externos (con MQTT) como del controlador
de la máquina (obtenidos con instrucciones DPRNT), ya sea
por USB o de forma inalámbrica.

* **Extras**: Además de los sistemas mencionados anteriormente, se
desarrollará un programa para que el socio formador procese sus
programas de control numérico (.nc) e integre de manera sencilla
las instrucciones DPRNT que se mencionan en el apartado anterior (DPRNTer.py).

### Herramientas
* [![Python][python-badge]][python-link]
* [![PySimpleGUI][pysimplegui-badge]][pysimplegui-link]
* [![PyInstaller][pyinstaller-badge]][pyinstaller-link]
* [![Arduino IDE][arduino-badge]][arduino-link]
* [![NodeRED][nodered-badge]][nodered-link]


<p align = ""><a href = "#readme-top">(Regresar al inicio)</p>

<!--
#### Primer prototipo de la interfaz
![First GUI Draft][GUI-Draft_Link]
-->

[python-link]: https://www.python.org/
[python-badge]: https://img.shields.io/badge/Python-v3.8-blue
[pysimplegui-link]: https://www.pysimplegui.org/en/latest/
[pysimplegui-badge]: https://img.shields.io/badge/PySimpleGUI-v4.60-blue
[laser-link]: https://www.lasermanufactura.com/
[project-pic]: https://github.com/aaronrt21/SistemasTecnologias4.0/blob/main/Images/InfoCycle.png
[pyinstaller-badge]: https://img.shields.io/badge/PyInstaller-v5.4.1-blue
[pyinstaller-link]: https://pyinstaller.org/en/stable/
[arduino-link]: https://www.arduino.cc/en/software
[arduino-badge]: https://img.shields.io/badge/Arduino%20IDE-1.8.19-blue
[nodered-link]: https://nodered.org/
[nodered-badge]: https://img.shields.io/badge/NodeRED-3.0.3-blue
