////	Realizar una función que reciba un numero ingresado por el usuario y averigüe si el número es
////	capicúa o no (Por ejemplo: 12321). Nota: recordar el uso del MOD y el Trunc. No podemos
////	transformar el numero a cadena para realizar el ejercicio.

Funcion resultado = EsCapicua(var)
	Definir resultado Como Logico
	Definir invertido, original, num Como Entero
	
	original = var
	invertido = 0
	
	Hacer
		num = var % 10
		invertido = invertido*10 + num
		var = trunc(var/10)
	Mientras Que var > 0
	
	Si original == invertido
		resultado = Verdadero
	SiNo
		resultado = Falso
	FinSi
FinFuncion

Algoritmo Capicua
	Definir num Como Entero
	Definir i Como Entero
	
	Escribir "Ingrese un número"
	Leer num
	
	Escribir "Es ", EsCapicua(num), " que el número ", num, " es capicua"
//	Escribir "Es ", EsCapicua2(num), " que el número ", num, " es capicua2"
FinAlgoritmo

//Funcion resultado = EsCapicua2(var)
//	Definir resultado Como Logico
//	Definir i, cantDig, digIzq, digDer Como Entero
//	
//	resultado = Verdadero
//	cantDig = 0
//	i = 0
//	
//	Hacer
//		cantDig = cantDig + 1
//	Mientras Que trunc(var/10^cantDig) <> 0
//	
//	cantDig = cantDig - 1
//	Hacer
//		digIzq = trunc(var/10^(cantDig-i)) % 10
//		digDer = trunc(var/10^i) % 10
//		Si No(digIzq == digDer)
//			resultado = Falso
//		FinSi
//		i = i + 1
//	Mientras Que cantDig/2 >= i 
//FinFuncion