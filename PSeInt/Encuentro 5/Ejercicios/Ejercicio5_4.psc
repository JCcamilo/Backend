//	Realizar un programa que pida una frase o palabra y si la frase o palabra es de 4
//	caracteres de largo, el programa le concatenara un signo de exclamaci�n al final, y si no
//	es de 4 caracteres el programa le concatenara un signo de interrogaci�n al final. El
//	programa mostrar� despu�s la frase final. Nota: investigar la funci�n Longitud() y
//	Concatenar() de PseInt.
Algoritmo Ejercicio5_4
	Definir frase Como Caracter
	Escribir "Ingrese una frase"
	Leer frase
	Si Longitud(frase) = 4
		frase = Concatenar(frase, "!")
	SiNo
		frase = Concatenar(frase, "?")
	FinSi
	Escribir "Su frase es: ", frase
FinAlgoritmo
