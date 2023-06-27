////	Realizar un procedimiento que permita realizar la división entre dos números y muestre el
////	cociente y el resto utilizando el método de restas sucesivas.
////	El método de división por restas sucesivas consiste en restar el dividendo con el divisor hasta
////	obtener un resultado menor que el divisor, este resultado es el residuo, y el número de restas
////	realizadas es el cociente. Por ejemplo: 50 / 13:
////		50 - 13 = 37 una resta realizada
////		37 - 13 = 24 dos restas realizadas
////		24 - 13 = 11 tres restas realizadas
////	dado que 11 es menor que 13, entonces: el residuo es 11 y el cociente es 3.

SubProceso DivRestaSuc(dividendo Por Referencia, divisor Por Referencia)
	Definir residuo, cociente Como Entero
	
	cociente = 0
	
	Hacer
		cociente = cociente + 1
		residuo = dividendo - cociente*divisor
	Mientras Que residuo >= divisor
	
	Escribir "El residuo es: ", residuo
	Escribir "El cociente es: ", cociente
FinSubProceso


Algoritmo RestaSucesiva
	Definir dividendo, divisor Como Real
	
	Escribir "Ingrese el dividendo y el divisor"
	Leer dividendo, divisor
	DivRestaSuc(dividendo, divisor)
FinAlgoritmo
