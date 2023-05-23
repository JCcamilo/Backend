////	Dise�ar una funci�n que reciba un numero en forma de cadena y lo devuelva como n�mero
////	entero. El programa podr� recibir n�meros de hasta 3 d�gitos. Nota: no poner n�meros con
////	decimales ni letras. Ejemplo: ingresando "100"(car�cter) debe convertirse en 100(entero).

Funcion num = CadenaEntero(string)
	Definir num, i, aux Como Entero
	
	num = 0
	
	Para i = 0 Hasta Longitud(string) - 1
		Segun Subcadena(string,i,i)
			"0":
				aux = 0
			"1":
				aux = 1
			"2":
				aux = 2
			"3":
				aux = 3
			"4":
				aux = 4
			"5":
				aux = 5
			"6":
				aux = 6
			"7":
				aux = 7
			"8":
				aux = 8
			"9":
				aux = 9
		FinSegun
		num = num*10 + aux
	FinPara
FinFuncion

Algoritmo CadenaAEntero
	Definir num Como Caracter
	
	Escribir "Ingrese un n�mero"
	Leer num
	
	Escribir "El n�mero es ", CadenaEntero(num)
FinAlgoritmo
