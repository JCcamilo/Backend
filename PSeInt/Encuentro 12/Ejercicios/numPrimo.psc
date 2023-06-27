////	Realizar una funci�n que reciba un numero ingresado por el usuario y averig�e si el n�mero es
////	primo o no. Un n�mero es primo cuando es divisible s�lo por 1 y por s� mismo, por ejemplo: 2,
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
		Escribir "Ingrese un n�mero"
		Leer num
	Mientras Que num < 1 
	
	Escribir "Es " EsPrimo(num) " que " num " es un n�mero primo"
FinAlgoritmo