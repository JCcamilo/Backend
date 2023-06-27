////	Crear una función que devuelva la diferencia que hay entre el valor más chico de un arreglo y
////	su valor más grande.
Funcion resultado <- ValoresExtremos(n, vector)
	Definir i, min, max, resultado Como Entero
	
	min = vector[0]
	max = vector[0]
	
	Para i = 1 Hasta n-1
		Si vector[i] > max
			max = vector[i]
		FinSi
		Si vector[i] < min
			min = vector[i]
		FinSi
	FinPara
	
	resultado = max - min
FinFuncion

Algoritmo DiferenciaExtremos
	Definir vector, dim, diferencia Como Entero
	
	dim = 5
	Dimension vector[dim]
	
	Llenar(dim, vector, 0, 100)
	diferencia = ValoresExtremos(dim, vector)
	
	Escribir "La diferencia de los valores extremos es: ", diferencia
FinAlgoritmo

SubProceso Llenar(n, vector Por Referencia, limInf, limSup)
	Definir i Como Entero
	
	Para i = 0 Hasta n-1
		vector[i] = Aleatorio(limInf, limSup)
	FinPara
FinSubProceso