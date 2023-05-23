////	Crear un procedimiento que calcule la temperatura media de un día a partir de la temperatura
////	máxima y mínima. Crear un programa principal, que, utilizando un procedimiento, vaya
////	pidiendo la temperatura máxima y mínima de n días y vaya mostrando la media de cada día. El
////	programa pedirá el número de días que se van a introducir.

SubProceso TemperaturaMedia(n)
	Definir max, min Como Real
	Definir i Como Entero
	
	Para i = 1 Hasta n
		Escribir ""
		Escribir "Ingrese la temperatura máxima y mínima para el día ", i
		Leer max, min
		Escribir "La temperatura media para el día ", i, " es: ", (max+min)/2
	FinPara
FinSubProceso

Algoritmo TempMedia
	Definir n Como Entero
	
	Escribir "Ingrese la cantidad de días"
	Leer n
	TemperaturaMedia(n)
FinAlgoritmo
