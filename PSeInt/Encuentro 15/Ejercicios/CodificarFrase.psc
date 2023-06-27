////	Escribir un programa que procese una secuencia de caracteres ingresada por teclado y
////	terminada en punto, y luego codifique la palabra o frase ingresada de la siguiente manera:
////	cada vocal se reemplaza por el carácter que se indica en la tabla y el resto de los caracteres
////	(incluyendo a las vocales acentuadas) se mantienen sin cambios.
////					a = @
////					e = #
////					i = $
////					o = %
////					u = *
////	Realice un subprograma que reciba una secuencia de caracteres y retorne la codificación
////	correspondiente. Utilice la estructura "según" para la transformación.
////	Por ejemplo, si el usuario ingresa: Ayer, lunes, salimos a las once y 10.
////	La salida del programa debería ser: @y#r, l*n#s, s@l$m%s @ l@s %nc# y 10.
////	NOTA: investigue el uso de la función concatenar de PSeInt para armar la palabra/frase.
SubProceso Codificar(string Por Referencia)
	Definir i Como Entero
	Definir aux, cod, frase Como Caracter
	
	frase = string
	string = ""
	
	Para i = 0 Hasta Longitud(frase)
		aux = Subcadena(frase, i, i)
		Segun aux
			"A", "a":
				cod = "@"
			"E", "e":
				cod = "#"
			"I", "i":
				cod = "$"
			"O", "o":
				cod = "%"
			"U", "u":
				cod = "*"
			De Otro Modo:
				cod = aux
		FinSegun
		string = string + cod
	FinPara
	
FinSubProceso


Algoritmo CodificarFrase
	Definir frase Como Caracter
	
	Escribir "Ingrese la frase a codificar"
	Leer frase
	
	Codificar(frase)
	Escribir frase
FinAlgoritmo
