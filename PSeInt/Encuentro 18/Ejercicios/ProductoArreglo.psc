////	Programe una función que calcule el producto de un arreglo de números enteros. Para esto
////	imagine, por ejemplo, que para un vector V de tamaño 4, el producto de todos los valores es
////	igual a (V[1]*V[2]*V[3]*V[4])
Funcion resultado <- ProductoVector(n, vector)
	Definir i, resultado Como Entero
	
	resultado = 1
	
	Para i = 0 Hasta n-1
		resultado = resultado * vector[i]
	FinPara
FinFuncion


Algoritmo ProductoArreglo
	Definir vector, dim, producto Como Entero
	
	dim = 5
	Dimension vector[dim]
	
	Llenar(dim, vector, -10, 10)
	producto = ProductoVector(dim, vector)
	
	Escribir "El resultado es ", producto
FinAlgoritmo

 //// Funciones auxiliares

SubProceso Llenar(n, vector Por Referencia, limInf, limSup)
	Definir i Como Entero
	
	Para i = 0 Hasta n-1
		vector[i] = Aleatorio(limInf, limSup)
	FinPara
FinSubProceso