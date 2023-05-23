SubProceso var <- conc(var1 Por Valor, var2 Por Valor)
	Definir var Como Caracter
	var = var1 + " " + var2
Fin SubProceso

Algoritmo cooperando2
	Definir text, cadena1, cadena2 Como Caracter
	cadena1 = "Cooperando"
	cadena2 = "trabajamos mejor"
//	text = conc(cadena1,cadena2)
//	Escribir text
	Escribir conc(cadena1,cadena2)
FinAlgoritmo