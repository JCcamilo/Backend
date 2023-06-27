//	Calcular las calificaciones de un grupo de alumnos. La nota final de cada alumno se
//	calcula seg�n el siguiente criterio: la parte pr�ctica vale el 10%; la parte de problemas
//	vale el 50% y la parte te�rica el 40%. El programa leer� el nombre del alumno, las tres
//	notas obtenidas, mostrar� el resultado por pantalla, y a continuaci�n volver� a pedir los
//	datos del siguiente alumno hasta que el nombre sea una cadena vac�a. Las notas deben
//	estar comprendidas entre 0 y 10, y si no est�n dentro de ese rango no se imprimir� el
//	promedio y se mostrar� un mensaje de error.

Algoritmo Ejercicio7_7
	Definir practica, problemas, teorica, notaFinal Como Real
	Definir alumno Como Caracter
	Definir condicion Como Logico
	Escribir "Definir el nombre del alumno:"
	Leer alumno
	practica = -1
	problemas = -1
	teorica = -1
	Mientras No(alumno = "")
		Mientras No((practica >= 0 y practica <= 10) y (problemas >= 0 y problemas <= 10) y (teorica >= 0 y teorica <= 10))
			Escribir ""
			Escribir "A continuaci�n ingrese las notas del alumno entre 1 y 10"
			Escribir "Ingrese la nota de la parte pr�ctica"
			Leer practica
			Escribir "Ingrese la nota de la parte de problemas"
			Leer problemas
			Escribir "Ingrese la nota de la parte te�rica"
			Leer teorica
			Si (practica >= 0 y practica <= 10) y (problemas >= 0 y problemas <= 10) y (teorica >= 0 y teorica <= 10)
				notaFinal = practica*0.1 + problemas*0.5 + teorica*0.4
				Escribir "La nota final de ", alumno, " es: ", notaFinal
			SiNo
				Escribir ""
				Escribir "Por favor, ingrese notas v�lidas para el alumno ", alumno
			FinSi
		FinMientras
		Escribir "Definir el nombre del alumno:"
		Leer alumno
		Escribir ""
		practica = -1
	FinMientras
	Escribir "El programa se detendr�, muchas gracias"
FinAlgoritmo
