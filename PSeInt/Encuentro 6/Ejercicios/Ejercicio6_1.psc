//Algoritmo Ejercicio6_1a
//	Definir S, R, M, D, var Como Caracter
//	Definir num1, num2 Como Entero
//	num1 = 4
//	num2 = num1
//	Escribir "Ingrese la operaci�n que desea realizar: "
//	Leer var
//	S = "S"
//	R = "R"
//	M = "M"
//	D = "D"
//	Si Mayusculas(var) = S
//		Escribir "La suma es: ", num1 + num2
//	SiNo 
//		Si Mayusculas(var) = R
//			Escribir "La resta es: ", num1 - num2
//		SiNo
//			Si Mayusculas(var) = M
//				Escribir "La multiplicaci�n es: ", num1 * num2
//			SiNo
//				Escribir "La divisi�n es: ", num1 / num2
//			FinSi
//		FinSi	
//	FinSi
//FinAlgoritmo
Algoritmo Ejercicio6_1b
	Definir S, R, M, D, var Como Caracter
	Definir num1, num2 Como Entero
	num1 = 4
	num2 = num1
	Escribir "Ingrese la operaci�n que desea realizar: "
	Leer var
	S = "S"
	R = "R"
	M = "M"
	D = "D"
	Segun Mayusculas(var) Hacer
		S:
			Escribir "La suma es: ", num1 + num2
		R: 
			Escribir "La resta es: ", num1 - num2
		M:
			Escribir "La multiplicaci�n es: ", num1 * num2
		D:
			Escribir "La divisi�n es: ", num1 / num2
	FinSegun
FinAlgoritmo
	