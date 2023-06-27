//	Siguiendo el ejercicio 20 (espacioItermedio) de los ejercicios principales, ahora deberemos 
//	hacer lo mismo pero que la cadena se muestre al revés. Por ejemplo, si tenemos la cadena: Hola,
//	deberemos mostrar a l o H.
Algoritmo fraseRevesEspacio
	Definir frase, fraseFinal, adicional Como Caracter
	Definir i Como Entero
	Escribir "Ingrese su frase"
	Leer frase
	fraseFinal = ""
	Para i <- Longitud(frase)-1 Hasta 0 Con Paso -1 Hacer
		Si i <> 0
			adicional = "_"
		SiNo
			adicional = ""
		FinSi
		fraseFinal = fraseFinal + Subcadena(frase,i,i) + adicional
	FinPara
	Escribir "Su frase es: ", fraseFinal
FinAlgoritmo