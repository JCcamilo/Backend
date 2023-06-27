//Programe una función que calcule el producto de un arreglo de números enteros. Para esto
//imagine, por ejemplo, que para un vector V de tamaño 4, el producto de todos los valores es
//igual a (V[1]*V[2]*V[3]*V[4])
Funcion resultado <- ProductoVec(DIM, vector)
	Definir i, resultado Como Entero
	
	resultado = 1
	
	Para i = 0 Hasta DIM-1
		resultado = resultado * vector[i]
	FinPara
FinFuncion

Algoritmo ProductoElemVector
	Definir DIM, vector, producto Como Entero
	
	Escribir "Ingrese la dimensión del vector"
	Leer DIM
	Dimension vector[DIM]
	
	LlenarVectorAleatorio(DIM, vector, -10, 10)
	EscribirVector(DIM, vector)
	Escribir "El producto de los elementos del vector es ", ProductoVec(DIM, vector)
FinAlgoritmo

//// Funciones auxiliares

SubProceso LlenarVectorAleatorio(DIM, vector, limInf, limSup)
	Definir i Como Entero
	
	Para i = 0 Hasta DIM-1
		vector[i] = Aleatorio(limInf, limSup)
	FinPara
FinSubProceso

SubProceso EscribirVector(DIM, vector)
	Definir i Como Entero
	
	Para i = 0 Hasta DIM-1
		Escribir sin saltar vector[i], " "
	FinPara
	Escribir ""
FinSubProceso