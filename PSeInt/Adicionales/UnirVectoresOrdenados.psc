//Dados dos vectores ordenados, unirlos de tal manera que queden en uno solo de forma ordenada

SubProceso UnirVectores(vectorA, DIM_A, vectorB, DIM_B, vectorC, DIM_C)
	Definir i, contA, contB Como Entero
	
	contA = 0
	contB = 0	
	
	Para i = 0 Hasta DIM_C-1
		Si contB < DIM_B Y vectorB[contB] <= vectorA[contA] 
			vectorC[i] = vectorB[contB]
			contB = contB + 1
		SiNo
			vectorC[i] = vectorA[contA]
			contA = contA + 1
		FinSi
	FinPara
FinSubProceso


Algoritmo UnirVectoresOrdenados
	Definir DIM_A, DIM_B, DIM_C Como Entero
	
	Escribir "Ingrese la dimension del vector A (tener en cuenta que DIM_B = 2*DIM_A)"
	Leer DIM_A
	DIM_B = 2*DIM_A
	DIM_C = DIM_A + DIM_B
	
	Definir vectorA, vectorB, vectorC Como Entero
	Dimension vectorA[DIM_A], vectorB[DIM_B], vectorC[DIM_C]
	
	LlenarVectorOrdenado(DIM_A, vectorA, 3)
	LlenarVectorOrdenado(DIM_B, vectorB, 1)
	
	UnirVectores(vectorA, DIM_A, vectorB, DIM_B, vectorC, DIM_C)
	EscribirVector(DIM_C,vectorC)
FinAlgoritmo

//// SubProcesos Auxiliares

SubProceso LlenarVectorOrdenado(DIM, vector, k) // k es la diferencia entre los elementos del vector
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