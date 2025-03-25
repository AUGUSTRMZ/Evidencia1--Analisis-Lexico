# 🧝‍♂️ Proyecto: Evidencia 1 Analisis Lexico | Reconocimiento de Palabras Élficas

**Autor:** Cesar Augusto Ramirez Davila

**Matrícula:** A01712439

---

## Introducción

Este proyecto presenta el diseño y simulación de un **Autómata Finito Determinista (AFD)** que reconoce un conjunto específico de palabras, derivadas de lenguajes élficos de la obra de Tolkien. El autómata fue desarrollado en **Prolog** y validado con una expresión regular equivalente.

### Palabras aceptadas:

- `Aduial`
- `Aglarond`
- `Aha`
- `Ai`
- `Aina`

---

## Diseño del Autómata
<img width="970" alt="Captura de pantalla 2025-03-25 a la(s) 1 32 34 p m" src="https://github.com/user-attachments/assets/9966fc1d-a076-4a04-8ad2-eeb958bd0944" />

El autómata trabaja sobre un alfabeto compuesto por caracteres:  
**Σ = {A, d, u, i, a, l, g, h, r, o, n}**

Su comportamiento está diseñado para aceptar únicamente las cinco palabras mencionadas.  
Se parte del estado `q0`, y según las letras leídas, se avanza por rutas específicas.  
El estado `q5` se marca como **estado de aceptación especial para "Ai"**, mientras que `q19` es el **estado de aceptación general** para las demás palabras.

---

## 📋 Tabla de Transiciones del Autómata

| Estado actual | Entrada | Nuevo estado |
|---------------|---------|---------------|
| `q0`          | A       | `q1`          |
| `q1`          | d       | `q2`          |
| `q2`          | u       | `q6`          |
| `q6`          | i       | `q7`          |
| `q7`          | a       | `q8`          |
| `q8`          | l       | `q19`         |
| `q1`          | g       | `q3`          |
| `q3`          | l       | `q10`         |
| `q10`         | a       | `q11`         |
| `q11`         | r       | `q12`         |
| `q12`         | o       | `q13`         |
| `q13`         | n       | `q14`         |
| `q14`         | d       | `q19`         |
| `q1`          | h       | `q4`          |
| `q4`          | a       | `q19`         |
| `q1`          | i       | `q5`          |
| `q5`          | n       | `q18`         |
| `q18`         | a       | `q19`         |

### Estados de importancia

- **Estado inicial**: `q0`
- **Estado(s) de aceptación**: `q5`, `q19`


## Verificación mediante pruebas

Para validar el correcto funcionamiento del autómata, se realizaron pruebas automáticas utilizando la librería `plunit` de SWI-Prolog.

Las pruebas incluyeron:

- Palabras válidas como `Aduial`, `Aglarond`, `Aha`, `Ai` y `Aina`
- Palabras incorrectas o incompletas para asegurar el rechazo adecuado

###  Resultado de pruebas
<img width="489" alt="Captura de pantalla 2025-03-25 a la(s) 2 39 06 p m" src="https://github.com/user-attachments/assets/2b3d4d6f-a5b2-4553-a77e-ec2345b4e7e3" />

## ✳Expresión Regular

Se determinó que la expresión regular más apropiada para describir el lenguaje definido por el autómata es:

```regex
^A(i(na)?|ha|glarond|duial)
```
^A: La cadena debe empezar con 'A'.

( ... ): Agrupacion las posibles continuaciones de la 'A'.

i(na)?: Coincide con 'i', seguido opcionalmente por 'na', es decir, coincide con "Ai" o "Aina"

|ha: coincide con 'ha' → "Aha"

|glarond: Coincide con "Aglarond"

|duial: Coincide con "Aduial"

## Referencias:
- Zathiald. (s. f.). GitHub - Zathiald/automaton: Evidence 1 of the course Implementation of Computational methods. GitHub. https://github.com/Zathiald/automaton/tree/main
- Xela-Mx. (s. f.). GitHub - XELA-MX/Evidencia-Analizador-Lexico: Repositorio principal para la evidencia uno de la materia Implementación de Métodos Computacionales. GitHub. https://github.com/XELA-MX/Evidencia-Analizador-Lexico
- Paolamgarrido. (s. f.). GitHub - paolamgarrido/Lexical_Analysis. GitHub. https://github.com/paolamgarrido/Lexical_Analysis/tree/main
- Jesus. (s. f.). GitHub - Jesus0204/automata: Evidence #1 of the course Implementation of Computational methods, where an Implementation of Lexical Analysis is executed through an Automaton and Regular Expressions. GitHub. https://github.com/Jesus0204/automata/tree/main
