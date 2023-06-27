//	Escriba un programa que pida una frase o palabra y valide si la primera letra de esa frase
//	es una 'A'. Si la primera letra es una 'A', se deber� de imprimir un mensaje por pantalla
//	que diga "CORRECTO", en caso contrario, se deber� imprimir "INCORRECTO". Nota:
//	investigar la funci�n Subcadena de PseInt.
//	Continuando el ejercicio anterior, ahora se pedir� una frase o palabra y se validara si la
//	primera letra de la frase es igual a la �ltima letra de la frase. Se deber� de imprimir un 2
//	mensaje por pantalla que diga "CORRECTO", en caso contrario, se deber� imprimir "INCORRECTO".

Algoritmo Ejercicio5_7
	Definir frase, a1, a2 Como Caracter
	Escribir "Ingrese su frase"
	Leer frase
	a1 = Subcadena(frase, 0, 0)
	a2 = Subcadena(frase, Longitud(frase) - 1, Longitud(frase) - 1)
	Si a1 = a2
		Escribir "CORRECTO ", frase
	SiNo
		Escribir "INCORRECTO ", frase
	FinSi
FinAlgoritmo
