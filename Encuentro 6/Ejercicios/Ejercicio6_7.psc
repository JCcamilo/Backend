//	El promedio de los trabajos prácticos de un curso se calcula en base a cuatro notas de las
//	cuales se elimina la nota menor y se promedian las tres notas más altas. Escriba un
//	programa que determine cuál es la nota eliminada y el promedio de los trabajos prácticos
//	de un estudiante.
Algoritmo Ejercicio6_7
	Definir nota1, nota2, nota3, nota4, min, media Como Real
	Escribir "Ingrese la nota 1"
	Leer nota1
	Escribir "Ingrese la nota 2"
	Leer nota2
	Escribir "Ingrese la nota 3"
	Leer nota3
	Escribir "Ingrese la nota 4"
	Leer nota4
	media = nota1 + nota2 + nota3 + nota4
	min = nota1
	Si nota2 <= min
		min = nota2
	FinSi
	Si nota3 <= min
		min = nota3
	FinSi
	Si nota4 <= min
		min = nota4
	FinSi
	Escribir ""
	Escribir "La nota mínima es: ", min
	Escribir "El promedio es: ", (media - min)/3
FinAlgoritmo
