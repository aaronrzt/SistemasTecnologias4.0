# SistemasTecnologias4.0
Repositorio de scripts desarrollados para la concentración de Sistemas y Tecnologías 4.0.

## ProcessNC.py
Este script genera una GUI para que el usuario seleccione un archivo de texto .nc o .txt. El propósito final de este script es
leer y modificar dicho archivo para agregar las instrucciones DPRNT necesarias para extraer información relevante de
controladores HAAS de nueva generación.

### Funcionamiento
Al correr el script por medio de un ejecutable (processnc para Unix/processnc.exe para Windows), se abre una ventana con
una interfaz gráfica. En esta, el usuario debe seleccionar un archivo .nc o .txt haciendo click en el botón 'Buscar',
seleccionar las variables que busca que se extraigan del proceso de maquinado (todas están seleccionadas por default)
y dar click en 'Procesar'. El programa leerá el archivo de entrada hasta que encuentre el primer '%', símbolo que indica
el inicio del programa y que no se repite más que al final de este. Cuando encuentra dicho símbolo, escribe las
instrucciones DPRNT que el usuario seleccionó antes de dar click en 'Procesar'. El programa genera dos cambios: crea una
copia del archivo original (al cuál se le agregará el prefijo _prev) con motivos de respaldo y el archivo nuevo
(el cual tomará el nombre del archivo original) con las instrucciones solicitadas.

#### Primer prototipo de la interfaz
![First GUI Draft](https://github.com/aaronrt21/SistemasTecnologias4.0/blob/main/GUIDraft.png)

#### Prototipo de la interfaz con instrucciones DPRNT reales
![DPRNTer GUI v1]()