////	Realizar un procedimiento que permita intercambiar el valor de dos variables de tipo entero.
////	La variable A, debe terminar con el valor de la variable B.

SubProceso CambiarValor(var1 Por Referencia, var2 Por Referencia)
	Definir aux Como Entero
	
	aux = var2
	var2 = var1
	var1 = aux
FinSubProceso

Algoritmo Intercambiar
	Definir num1, num2 Como Entero
	
	Escribir "Ingrese dos números"
	Leer num1, num2
	CambiarValor(num1,num2)
	
	Escribir "Su primer variables es ", num1
	Escribir "Su primer variables es ", num2
FinAlgoritmo
