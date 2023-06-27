//	Calcular las calificaciones de un grupo de alumnos. La nota final de cada alumno se
//	calcula según el siguiente criterio: la parte práctica vale el 10%; la parte de problemas
//	vale el 50% y la parte teórica el 40%. El programa leerá el nombre del alumno, las tres
//	notas obtenidas, mostrará el resultado por pantalla, y a continuación volverá a pedir los
//	datos del siguiente alumno hasta que el nombre sea una cadena vacía. Las notas deben
//	estar comprendidas entre 0 y 10, y si no están dentro de ese rango no se imprimirá el
//	promedio y se mostrará un mensaje de error.

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
			Escribir "A continuación ingrese las notas del alumno entre 1 y 10"
			Escribir "Ingrese la nota de la parte práctica"
			Leer practica
			Escribir "Ingrese la nota de la parte de problemas"
			Leer problemas
			Escribir "Ingrese la nota de la parte teórica"
			Leer teorica
			Si (practica >= 0 y practica <= 10) y (problemas >= 0 y problemas <= 10) y (teorica >= 0 y teorica <= 10)
				notaFinal = practica*0.1 + problemas*0.5 + teorica*0.4
				Escribir "La nota final de ", alumno, " es: ", notaFinal
			SiNo
				Escribir ""
				Escribir "Por favor, ingrese notas válidas para el alumno ", alumno
			FinSi
		FinMientras
		Escribir "Definir el nombre del alumno:"
		Leer alumno
		Escribir ""
		practica = -1
	FinMientras
	Escribir "El programa se detendrá, muchas gracias"
FinAlgoritmo
