# Juego de la Vida de Conway

El Juego de la Vida de Conway es un autómata celular diseñado por el matemático británico John Conway en 1970. Es un modelo matemático que simula la evolución de células en una cuadrícula bidimensional.

## Reglas del Juego de la Vida
El juego se desarrolla en una cuadrícula (o tablero) en la que cada celda puede estar en uno de dos estados: viva o muerta. Las reglas para la evolución de las células en el juego son las siguientes:

1. **Sobrevivencia**: Si una célula está viva y tiene dos o tres vecinas vivas, sobrevive.
2. **Nacimiento**: Si una célula está muerta y tiene exactamente tres vecinas vivas, nace.
3. **Muerte por sobrepoblación**: Si una célula está viva y tiene más de tres vecinas vivas, muere por sobrepoblación.

Estas simples reglas dan lugar a una gran variedad de patrones y comportamientos interesantes.

## Requisitos

Para ejecutar el código del autómata celular en CLISP, solo necesitas tener instalado un intérprete de Lisp en tu sistema. Puedes utilizar CLISP, SBCL u otro intérprete compatible con Lisp. Puedes encontrar instrucciones de instalación en la documentación oficial de cada intérprete.


## Ejemplo de Uso
Para utilizar esta implementación, primero declara una matriz que represente el estado inicial del tablero. Por ejemplo:

```lisp
(setq matriz-diamond 
  '(
    (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
    (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
    (0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0)
    (0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0)
    (0 0 0 0 0 0 1 0 1 0 1 0 0 0 0 0 0)
    (0 0 0 0 0 0 1 0 0 0 1 0 0 0 0 0 0)
    (0 0 0 0 1 1 0 0 1 0 0 1 1 0 0 0 0)
    (0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0)
    (0 0 1 0 1 0 1 1 0 1 1 0 1 0 1 0 0)
    (0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0)
    (0 0 0 0 1 1 0 0 1 0 0 1 1 0 0 0 0)
    (0 0 0 0 0 0 1 0 0 0 1 0 0 0 0 0 0)
    (0 0 0 0 0 0 1 0 1 0 1 0 0 0 0 0 0)
    (0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0)
    (0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0)
    (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
    (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
  )
)
```

Cuando tienes definido la matriz ejecutas con el siguiente comando para ejecutar el juego de la vida de conway:

```
(juego matriz-diamond 100)
```

Este codigo generará el Juego de la vida de Conway con la `matriz-diamond` de estado inicial y se ejecutaran 100 pasos.

- El primer parametro `matriz-diamond` es la matriz inicial donde los 0 se corresponden con celulas muertas y los 1 con celulas vivas.
- El segundo parametro `100` se corresponde con el numero de pasos que va a realizar.
