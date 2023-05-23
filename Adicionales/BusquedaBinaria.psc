Funcion i <- Busqueda(vector, DIM, num)
	Definir inf, sup Como Entero
	Definir i Como Real
	
	inf = 0
	sup = DIM-1
	i = Trunc((sup + inf)/2)
	
	Hacer
		Si num == vector[i]
		SiNo
			Si num > vector[i]
				inf = i + 1
			SiNo
				sup = i - 1
			FinSi
			i = Trunc((sup + inf)/2)
		FinSi
	Mientras Que num <> vector[i]
FinFuncion
//	Si se quiere observar los paso entonces -> Escribir " i = ", i \n Escribir "inf = ", inf, " sup = ", sup Sin Saltar


Algoritmo BusquedaBinaria
	Definir DIM, num, pos Como Entero
	
	Escribir "Ingrese la dimension del vector A"
	Leer DIM
	Escribir "Ingrese el número a buscar"
	Leer num
	
	Definir vectorA Como Entero
	Dimension vectorA[DIM]
	
	LlenarVectorOrdenado(vectorA, DIM, 1)
	pos = Busqueda(vectorA, DIM, num)
	Escribir "La posición es ", pos
FinAlgoritmo

//// SubProcesos Auxiliares

SubProceso LlenarVectorOrdenado(vector, DIM, k) // k es la diferencia entre los elementos del vector
	Definir i Como Entero
	
	Para i = 0 Hasta DIM-1
		vector[i] = k*(i+1)
	FinPara
FinSubProceso

SubProceso EscribirVector(DIM, vector)
	Definir i Como Entero
	
	Para i = 0 Hasta DIM-1
		Escribir sin saltar vector[i]
	FinPara
	Escribir ""
FinSubProceso