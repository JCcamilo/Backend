////	Crea una funci�n EsMultiplo que reciba los dos n�meros pasados por el usuario, validando
////	que el primer n�mero m�ltiplo del segundo y devuelva verdadero si el primer n�mero es
////	m�ltiplo del segundo, sino es m�ltiplo que devuelva falso.
Funcion resultado = EsMultiplo (numero1,numero2)
	Definir resultado Como Logico
	Si numero1 % numero2 = 0
		resultado = Verdadero
	SiNo
		resultado = Falso
	FinSi
FinFuncion

Algoritmo parOimpar
	Definir num1, num2, resultado Como Entero
	Escribir "Ingrese los n�meros"
	Leer num1, num2
	Escribir EsMultiplo(num1,num2)
FinAlgoritmo