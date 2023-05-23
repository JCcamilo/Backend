////	Realizar una función que reciba un numero ingresado por el usuario y averigüe si el número es
////	primo o no. Un número es primo cuando es divisible sólo por 1 y por sí mismo, por ejemplo: 2,
////	3, 5, 7, 11, 13, 17, etc. Nota: recordar el uso del MOD.
Funcion resultado = EsPrimo(num)
	Definir resultado Como Logico
	Definir i Como Entero
	
	i = 2 
	resultado = Verdadero
	
	Hacer
		Si num % i = 0 Y num <> 2
			resultado = Falso
		FinSi
		i = i + 1
	Mientras Que resultado Y i < num 
FinFuncion

Algoritmo numPrimo
	Definir num Como Entero
	
	Hacer
		Escribir "Ingrese un número"
		Leer num
	Mientras Que num < 1 
	
	Escribir "Es " EsPrimo(num) " que " num " es un número primo"
FinAlgoritmo