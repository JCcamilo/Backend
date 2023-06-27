Algoritmo Ejercicio3_Coop
	Definir num Como Entero
	Escribir "Ingrese un número de 4 cifras: "
	Leer num
	Escribir "Unidades de miles: ", trunc(num / 1000) % 10
	Escribir "Centena: ", trunc(num / 100) % 10
	Escribir "Decena: ", trunc(num / 10) % 10
	Escribir "Unidad: ", trunc(num / 1) % 10
FinAlgoritmo
