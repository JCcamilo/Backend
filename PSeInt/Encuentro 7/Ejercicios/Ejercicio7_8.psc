//	Escribir un programa que calcule cuántos dígitos tiene un número entero positivo sin
//	convertirlo a cadena (pista: se puede hacer dividiendo varias veces entre 10). Nota:
//	investigar la función trunc().
Algoritmo Ejercicio7_8
	Definir num, aux, ind Como Real
	Escribir "Ingrese el número a analizar: "
	Leer num
	aux = num
	ind = 0
	Mientras aux >= 1
		ind = ind + 1
		aux = trunc(aux / 10)
	FinMientras
	Escribir "Su número es: ", num, " y tiene ", ind, " dígitos"
FinAlgoritmo
