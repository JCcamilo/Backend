//	Escribir un programa que calcule cu�ntos d�gitos tiene un n�mero entero positivo sin
//	convertirlo a cadena (pista: se puede hacer dividiendo varias veces entre 10). Nota:
//	investigar la funci�n trunc().
Algoritmo Ejercicio7_8
	Definir num, aux, ind Como Real
	Escribir "Ingrese el n�mero a analizar: "
	Leer num
	aux = num
	ind = 0
	Mientras aux >= 1
		ind = ind + 1
		aux = trunc(aux / 10)
	FinMientras
	Escribir "Su n�mero es: ", num, " y tiene ", ind, " d�gitos"
FinAlgoritmo
