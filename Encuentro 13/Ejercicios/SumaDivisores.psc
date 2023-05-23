////	Realizar una función que calcule y retorne la suma de todos los divisores del número n
////	distintos de n. El valor de n debe ser ingresado por el usuario.
Funcion suma = SumaDivisor(n)
	Definir suma, i Como Entero
	
	suma = 0
	
	Para i = 1 Hasta n-1
		Si n % i == 0
			suma = suma + i
		FinSi
	FinPara
FinFuncion

Algoritmo SumaDivisores
	Definir num Como Entero
	
	Escribir "Ingrese un número"
	Leer num
	
	Escribir "La suma de los divisores de ", num, " es: ", SumaDivisor(num)
FinAlgoritmo
