Retos s4n
===

---

**Explorador de marte**


###**Instrucciones**:
Resuelva el siguiente problema describiendo el modelo de objetos de la solución mediante un diagrama de clases. Implemente el diseño que definió en el diagrama de clases.

Se espera que la solución sea resuelta utilizando los mecanismos y prácticas de la programación orientada a objetos. No se espera una solución sólo algorítmica.

Suponga que la aplicación recibirá las líneas de entrada a través de un archivo de texto plano sin ningún tipo de formato en particular.

###1. Robots

**Enunciado**:

Un equipo de de exploradores roboticos han sido solicitados por la NASA para que aterricen en la superficie de Marte.

Curiosamente la superficie de Marte es plana y debe ser navegada por los exploradores de manera que las cámaras internas tengan una vista completa del terreno circundante y así mandar estas imágenes al planeta Tierra.

Una posición del explorador está representada por la combinación de coordenadas X y Y y una letra que corresponde a uno de los puntos cardinales. Por simplificación, el terreno de Marte puede ser visto como una grilla. Por ejemplo, (0,0,N) corresponde a la posición de un explorador en la esquina inferior izquierda de la grilla estando el explorando apuntando al norte.

Con el propósito de controlar el explorador robótico, la NASA envía cadenas de caracteres sencillas. Las letras posibles son ‘I’, ‘D’ y ‘A’.

- ‘I’ corresponde a girar 90 grados a la Izquierda sin moverse del punto en la grilla en la que se encuentra, 
- ‘D’ corresponde a girar 90 grados a la Derecha sin moverse del punto en la grilla en la que se encuentra
- ‘A’ corresponde a realizar un movimiento hacia adelante manteniendo la misma dirección en la que actualmente se encuentra.

Asuma que el cuadro que queda al norte del punto (X,Y) es (X,Y+1).

**Datos de entrada**:

La primera línea de datos de entrada es la coordenada superior derecha máxima posible del terreno de Marte, la coordenada inferior izquierda se asume que es 0,0.

El resto de los datos de entrada es información pertinente a los exploradores que han aterrizado en la superficie marciana. Cada explorador tiene dos líneas de entrada de datos. La primera línea corresponde la posición actual del explorador y la segunda línea es una serie de instrucciones que le indican al robot como debe explorar el terreno.

La posición está compuesta por dos enteros y una letra separados por espacios, correspondientes a la coordenada X y Y y la orientación del explorador.

Cada explorador será finalizado secuencialmente, lo que significa que el segundo explorador no iniciará sus movimientos hasta que el último explorador haya finalizado sus movimientos.

**Datos de salida**:

La salida en consola por cada explorador debe ser suposición final y su orientación.
**Ejemplo**

***Entrada de ejemplo:***

5 5

1 2 N

IAIAIAIAA

3 3 E

AADAADADDA


***Salida en consola esperada:***

1 3 N

5 1 E


###2. Permutación común
###**Instrucciones:**
Resuelva el siguiente ejercicio a través del algorítmo más simple.

Suponga que la aplicación recibirá las líneas de entrada a través de un archivo de texto plano sin ningún tipo de formato en particular.

**Enunciado**: 

Dadas dos cadenas de caracteres A y B, imprima en consola la cadena de caracteres X más larga posible tal que sea una permutación de una subsecuencia de A y talque sea una permutación de una subsecuencia de B.

**Datos de entrada**:

Los datos ingresan en un archivo plano el cual contiene varios casos. Cada caso consiste en dos líneas consecutivas, de manera tal que la línea 1 y la línea 2 son un caso, la línea 3 y la línea 4 son otro caso y así sucesivamente. 

Cada línea contiene una cadena de caracteres en minúscula de máximo 1000 caracteres.

**Datos de salida**: 

Por cada conjunto de datos de entrada se debe imprimir a X en la consola. Si existen varios X, imprimirlos en orden alfabético. 

**Ejemplo**

***Entrada de ejemplo:***

pretty

women

walking

down

the

street

***Salida en consola esperada:***

e

nw

et
