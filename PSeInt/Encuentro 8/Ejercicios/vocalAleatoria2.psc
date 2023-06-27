Algoritmo vocalAleatoria2
	Definir var, vocal Como Caracter
	Definir random Como Entero
	var = "aeiou"
	random = Aleatorio(0, 4)
	var = Subcadena(var, random, random)
	Hacer 
		Escribir "Ingrese la vocal"
		Leer vocal
	Mientras Que vocal <> var
FinAlgoritmo
