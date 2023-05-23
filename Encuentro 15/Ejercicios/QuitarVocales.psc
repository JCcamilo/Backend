////	Diseñar un procedimiento que reciba una frase, y el programa remueva todas las vocales
////	repetidas. Al final el procedimiento mostrará la frase final.
////	Por ejemplo:
////	Entrada: "Habia una vez un barco"
////	Salida: "Habi un vez n brco"
////	Se marcan en rojo las repetidas sólo para explicar la consigna. Las vocales ?e?, ?i? y ?o? quedan
////	al no estar repetidas.

//SubProceso QuitarVocal(string Por Referencia)
//	Definir a ,e ,i ,oo ,u Como Logico
//	Definir j Como Entero
//	Definir aux, frase Como Caracter
//	
//	frase = ""
//	a = Verdadero
//	e = Verdadero
//	i = Verdadero
//	oo = Verdadero
//	u = Verdadero
//	
//	Para j = 0 Hasta Longitud(string)
//		aux = Subcadena(string,j,j)
//		Segun Minusculas(aux)
//			"a":
//				Si a
//					frase = frase + aux
//					a = Falso
//				FinSi
//			"e":
//				Si e
//					frase = frase + aux
//					e = Falso
//				FinSi
//			"i":
//				Si i
//					frase = frase + aux
//					i = Falso
//				FinSi
//			"o":
//				Si oo
//					frase = frase + aux
//					oo = Falso
//				FinSi
//			"u":
//				Si u
//					frase = frase + aux
//					u = Falso
//				FinSi
//			De Otro Modo:
//				frase = frase + aux
//		FinSegun
//	FinPara
//	
//	string = frase
//FinSubProceso

Algoritmo QuitarVocales
	Definir frase Como Caracter
	
	Escribir "Ingrese una frase"
	Leer frase
	
	//	QuitarVocal(frase)
	RemoverVocales(frase)
	
	Escribir frase
FinAlgoritmo

SubProceso RemoverVocales(frase Por Referencia)
    Definir fraseTemp, vocales, letra Como Caracter
	Definir i, j Como Entero
	Definir anidar Como Logico
	
	vocales = "aeiou" // Vocales disponibles inicialmente
	fraseTemp = "" // Frase que voy a reescribir
	
    Para i = 0 Hasta Longitud(frase) Hacer
		letra = Minusculas(Subcadena(frase, i, i))
		anidar = Verdadero
		
		Si letra == "a" O letra == "e" O letra == "i" O letra == "o" O letra == "u"
			Para j = 0 Hasta Longitud(vocales)
				Si letra == Subcadena(vocales, j, j)
					anidar = Verdadero
					vocales = Subcadena(vocales, 0, j-1) + Subcadena(vocales, j+1, Longitud(vocales)) //// Si letra == i -> vocales = "ae" + "ou"" 
					j = 6 //// Salir del ciclo de j
				SiNo
					anidar = Falso
				FinSi
			FinPara
		FinSi
		
		Si anidar
			fraseTemp = fraseTemp + letra
		FinSi
    FinPara
	
	frase = fraseTemp
FinSubProceso
