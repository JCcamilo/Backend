////	Realizar un programa que pida al usuario una frase y una letra a buscar en esa frase. La
////	funci�n debe devolver la cantidad de veces que encontr� la letra. Nota: recordar el uso de la
////	funci�n Subcadena().
Funcion cantidad = buscar (frase, simbolo)
	Definir i, cantidad Como Entero
	cantidad = 0
	Para i = 0 Hasta Longitud(frase) - 1
		Si Subcadena(frase, i, i) = simbolo
			cantidad = cantidad + 1
		FinSi
	FinPara
FinFuncion

Algoritmo buscarLetra
	Definir text, letra Como Caracter
	Escribir "Ingrese su palabra y la letra a buscar"
	Leer text, letra
	Escribir "La cantidad de veces que se encontr� el caract�r (", letra Sin Saltar
	Escribir ") en la frase es ", buscar(text, letra) Sin Saltar
	Escribir ""
FinAlgoritmo
