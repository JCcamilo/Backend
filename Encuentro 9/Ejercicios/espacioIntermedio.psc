//	Realizar un programa que pida una frase y el programa deber� mostrar la frase con un
//	espacio entre cada letra. La frase se mostrar� as�: H o l a. Nota: recordar el
//	funcionamiento de la funci�n Subcadena().
//	NOTA:. En PseInt, si queremos escribir sin que haya saltos de l�nea, al final de la
//	operaci�n "escribir" escribimos "sin saltar". Por ejemplo:
//		Escribir sin saltar "Hola, "
//		Escribir sin saltar "c�mo est�s?"
//	Imprimir� por pantalla: Hola, c�mo est�s?
Algoritmo espacioIntermedio
	Definir frase, fraseFinal, aux, adicional Como Caracter
	Definir i Como Entero
	Escribir "Ingrese su frase"
	Leer frase
	fraseFinal = ""
	Para i <- 0 Hasta longitud(frase)-1 Con Paso 1 Hacer
		Si i <> longitud(frase)-1
			adicional = "_"
		SiNo
			adicional = ""
		FinSi
		fraseFinal = fraseFinal + Subcadena(frase,i,i) + adicional
	FinPara
	Escribir fraseFinal
FinAlgoritmo
