////	Crear un programa que dibuje una escalera de números, donde cada línea de números
////	comience en uno y termine en el número de la línea. Solicitar la altura de la escalera al usuario
////	al comenzar. Ejemplo: si se ingresa el número 3:
////	1
////	12
////	123
SubProceso Escalera(n)
	Definir i Como Entero
	Definir text Como Caracter
	
	text = ""
	
	Para i = 1 Hasta n
		text = text + ConvertirATexto(i)
		Escribir text
	FinPara
	
FinSubProceso

Algoritmo EscaleraNum
	Definir num Como Entero
	
	Escribir "Ingrese el número para la escalera"
	Leer num
	
	Escalera(num)
FinAlgoritmo
