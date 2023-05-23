// Diseñe un algoritmo que lea un número de tres cifras y determine si es o no capicúa.

Algoritmo Ejercicio4_4
	Definir num Como Entero
	Definir chr1, chr2 Como Caracter 
	Escribir "Ingrese el número"
	Leer num
	chr1 = SubCadena(ConvertirATexto(num),0,0)
	chr2 = SubCadena(ConvertirATexto(num),2,2)
	Si chr1 = chr2
		Escribir "El número ", num, " es capicúa"
	SiNo
		Escribir "El número ", num, " no es capicúa"
	FinSi
FinAlgoritmo
