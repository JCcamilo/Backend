////	Crear un procedimiento que calcule la temperatura media de un d�a a partir de la temperatura
////	m�xima y m�nima. Crear un programa principal, que, utilizando un procedimiento, vaya
////	pidiendo la temperatura m�xima y m�nima de n d�as y vaya mostrando la media de cada d�a. El
////	programa pedir� el n�mero de d�as que se van a introducir.

SubProceso TemperaturaMedia(n)
	Definir max, min Como Real
	Definir i Como Entero
	
	Para i = 1 Hasta n
		Escribir ""
		Escribir "Ingrese la temperatura m�xima y m�nima para el d�a ", i
		Leer max, min
		Escribir "La temperatura media para el d�a ", i, " es: ", (max+min)/2
	FinPara
FinSubProceso

Algoritmo TempMedia
	Definir n Como Entero
	
	Escribir "Ingrese la cantidad de d�as"
	Leer n
	TemperaturaMedia(n)
FinAlgoritmo
