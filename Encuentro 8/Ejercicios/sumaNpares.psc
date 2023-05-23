//	Se pide escribir un programa que calcule la suma de los N primeros números pares. Es
//	decir, si ingresamos el número 5 como valor de N, el algoritmo nos debe realizar la suma
//	de los siguientes valores: 2+4+6+8+10.
Algoritmo sumaNpares
	Definir n, suma, i Como Entero
	Escribir "Ingrese su número"
	Leer n
	i = 0
	suma = 0
	Hacer
		suma = suma + 2*i
		i = i + 1
	Mientras Que i <= n
	Escribir "La suma es: ", suma
FinAlgoritmo
