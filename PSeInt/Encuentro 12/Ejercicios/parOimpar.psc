////	Crea una función EsMultiplo que reciba los dos números pasados por el usuario, validando
////	que el primer número múltiplo del segundo y devuelva verdadero si el primer número es
////	múltiplo del segundo, sino es múltiplo que devuelva falso.
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
	Escribir "Ingrese los números"
	Leer num1, num2
	Escribir EsMultiplo(num1,num2)
FinAlgoritmo