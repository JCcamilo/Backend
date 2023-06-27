Algoritmo Ejercicio3_14
	Definir num, aux Como Entero
	Escribir "Ingrese el número de dos cifras"
	Leer num
	aux = (trunc(num / 10) % 10) + (num % 10)*10
	Escribir "El resultado es: ", aux
FinAlgoritmo