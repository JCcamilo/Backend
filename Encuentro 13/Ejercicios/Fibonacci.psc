////	Realizar una funci�n que permita obtener el t�rmino n de la sucesi�n de Fibonacci. La
////	sucesi�n de Fibonacci es la sucesi�n de los siguientes n�meros:
////	1, 1, 2, 3, 5, 8, 13, 21, 34, ...
////	Donde cada uno de los n�meros se calcula sumando los dos anteriores a �l. Por ejemplo:
////	La sucesi�n del n�mero 2 se calcula sumando (1+1)
////	An�logamente, la sucesi�n del n�mero 3 es (1+2),
////	Y la del 5 es (2+3),
////	Y as� sucesivamente...
////	La sucesi�n de Fibonacci se puede formalizar de acuerdo a la siguiente f�rmula:
////	Fibonacci (n) = Fibonacci (n-1) + Fibonacci (n-2) para todo n > 1
////	Fibonacci (n) = 1 para todo n <= 1
////	Por lo tanto, si queremos calcular el t�rmino "n" debemos escribir una funci�n que reciba
////	como argumento el valor de "n" y que calcule la serie hasta llegar a ese valor.
////	Para conocer m�s acerca de la serie de Fibonacci consultar el siguiente link:
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
	Escribir "Ingresar el n�mero para calcular su sucesi�n de Fibonacci"
	Leer num
	Escribir Fibonacci1(num)
	Escribir Fibonacci2(num)
	Escribir Fibonacci3(num)
FinAlgoritmo
