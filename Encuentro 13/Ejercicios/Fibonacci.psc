////	Realizar una función que permita obtener el término n de la sucesión de Fibonacci. La
////	sucesión de Fibonacci es la sucesión de los siguientes números:
////	1, 1, 2, 3, 5, 8, 13, 21, 34, ...
////	Donde cada uno de los números se calcula sumando los dos anteriores a él. Por ejemplo:
////	La sucesión del número 2 se calcula sumando (1+1)
////	Análogamente, la sucesión del número 3 es (1+2),
////	Y la del 5 es (2+3),
////	Y así sucesivamente...
////	La sucesión de Fibonacci se puede formalizar de acuerdo a la siguiente fórmula:
////	Fibonacci (n) = Fibonacci (n-1) + Fibonacci (n-2) para todo n > 1
////	Fibonacci (n) = 1 para todo n <= 1
////	Por lo tanto, si queremos calcular el término "n" debemos escribir una función que reciba
////	como argumento el valor de "n" y que calcule la serie hasta llegar a ese valor.
////	Para conocer más acerca de la serie de Fibonacci consultar el siguiente link:
////	https://quantdare.com/numeros-de-fibonacci/
Funcion resultado = Fibonacci1(var)
	Definir resultado Como Entero
	
	resultado = 1
	
	Si var = 0
		resultado = 0
	SiNo
		Si var = 1
			resultado = 1
		SiNo
			resultado = Fibonacci1(var-1) + Fibonacci1(var-2)
		FinSi
	FinSi
FinFuncion

Funcion resultado = Fibonacci2(var)
	Definir resultado Como Real
	
	resultado = (((1+5^(1/2))/2)^var-((1-5^(1/2))/2)^var)/(5^(1/2))
FinFuncion

Funcion in = Fibonacci3(var)
	Definir in, in2, in1 Como Real
	Definir i Como Entero
	
	in2 = 0
	in1 = 1
	in = 1
	
	Segun var
		0:
			in = 0
		1, 2:
			in = 1
		De Otro Modo:
			Para i = 3 Hasta var
				in2 = in1
				in1 = in
				in = in1 + in2
			FinPara
	FinSegun
FinFuncion

Algoritmo Fibonacci
	Definir num Como Entero
	Escribir "Ingresar el número para calcular su sucesión de Fibonacci"
	Leer num
	Escribir Fibonacci1(num)
	Escribir Fibonacci2(num)
	Escribir Fibonacci3(num)
FinAlgoritmo
