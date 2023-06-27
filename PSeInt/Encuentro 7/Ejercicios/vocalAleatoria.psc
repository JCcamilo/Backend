Algoritmo vocalAleatoria1
	Definir var, vocal Como Caracter
	Definir random Como Entero
	var = "aeiou"
	vocal = "0"
	random = Aleatorio(0, 4)
	var = Subcadena(var, random, random)
	Escribir var
	Mientras vocal <> var
		Escribir "Ingrese la vocal"
		Leer vocal
	FinMientras
FinAlgoritmo