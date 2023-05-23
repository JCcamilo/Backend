//Algoritmo Ejercicio6_1a
//	Definir S, R, M, D, var Como Caracter
//	Definir num1, num2 Como Entero
//	num1 = 4
//	num2 = num1
//	Escribir "Ingrese la operación que desea realizar: "
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
//				Escribir "La multiplicación es: ", num1 * num2
//			SiNo
//				Escribir "La división es: ", num1 / num2
//			FinSi
//		FinSi	
//	FinSi
//FinAlgoritmo
Algoritmo Ejercicio6_1b
	Definir S, R, M, D, var Como Caracter
	Definir num1, num2 Como Entero
	num1 = 4
	num2 = num1
	Escribir "Ingrese la operación que desea realizar: "
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
			Escribir "La multiplicación es: ", num1 * num2
		D:
			Escribir "La división es: ", num1 / num2
	FinSegun
FinAlgoritmo
	