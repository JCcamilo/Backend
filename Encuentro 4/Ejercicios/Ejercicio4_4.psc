// Dise�e un algoritmo que lea un n�mero de tres cifras y determine si es o no capic�a.

Algoritmo Ejercicio4_4
	Definir num Como Entero
	Definir chr1, chr2 Como Caracter 
	Escribir "Ingrese el n�mero"
	Leer num
	chr1 = SubCadena(ConvertirATexto(num),0,0)
	chr2 = SubCadena(ConvertirATexto(num),2,2)
	Si chr1 = chr2
		Escribir "El n�mero ", num, " es capic�a"
	SiNo
		Escribir "El n�mero ", num, " no es capic�a"
	FinSi
FinAlgoritmo
