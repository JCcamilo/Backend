//	Hacer un algoritmo para calcular la media de los n�meros pares e impares, s�lo se ingresar� diez n�meros.
Algoritmo mediaParImpar
	Definir mediaPar, mediaImpar Como Real
	Definir contadorPar, contadorImpar, num Como Entero
	contadorPar = 0
	contadorImpar = 0
	mediaPar = 0
	mediaImpar = 0
	Hacer
		Escribir "Ingrese un n�mero"
		Leer num
		Si num % 2 == 0
			mediaPar = mediaPar + num
			contadorPar = contadorPar + 1
		SiNo
			mediaImpar = mediaImpar + num
			contadorImpar = contadorImpar + 1
		FinSi
	Mientras Que contadorPar + contadorImpar < 10
	mediaPar = mediaPar/contadorPar
	mediaImpar = mediaImpar/contadorImpar
	Escribir "El promedio de los n�meros pares es ", mediaPar
	Escribir "El promedio de los n�meros impares es ", mediaImpar
FinAlgoritmo
