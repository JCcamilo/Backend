////	Realizar un programa con el siguiente menú y le pregunte al usuario que quiere hacer hasta
////	que ingrese la opción Salir:
////		A. Llenar Vector A. Este vector es de tamaño N y se debe llenar de manera aleatoria
////		usando la función Aleatorio(valorMin, valorMax) de PseInt.
////		B. Llenar Vector B. Este vector también es de tamaño N y se llena de manera aleatoria.
////		C. Llenar Vector C con la suma de los vectores A y B. La suma se debe realizar elemento
////		a elemento. Ejemplo: C = A + B
////		D. Llenar Vector C con la resta de los vectores B y A. La resta se debe realizar elemento a
////		elemento. Ejemplo: C = B - A
////		E. Mostrar. Esta opción debe permitir al usuario decidir qué vector quiere mostrar: Vector
////		A, B, o C.
////		F. Salir.
////	NOTA: El rango de los números aleatorios para los Vectores será de [-100 a 100]. La longitud
////	para todos los vectores debe ser la misma, por lo tanto, esa información sólo se solicitará una
////	vez.

Funcion retorno <- menu(n, vector1 Por Referencia, vector2 Por Referencia, vector3 Por Referencia)
	Definir var, aux Como Caracter
	Definir retorno Como Logico
	
	Escribir ""
	Escribir "A. Llenar Vector A."
	Escribir "B. Llenar Vector B."
	Escribir "C. Llenar Vector C con la suma. C = A + B"
	Escribir "D. Llenar Vector C con la resta. C = B - A"
	Escribir "E. Mostrar vector: A, B, o C"
	Escribir "F. Salir"
	
	Leer var
	Escribir ""
	
	retorno = Falso
	
	Segun Mayusculas(var)
		"A": 
			Llenar(n, vector1, -100, 100)
//			MostrarVector(n, vector1)
		"B": 
			Llenar(n, vector2, -100, 100)
//			MostrarVector(n, vector2)
		"C":
			Operar(n, vector1, vector2, vector3, Verdadero)
//			MostrarVector(n, vector3)
		"D":
			Operar(n, vector1, vector2, vector3, Falso)
			MostrarVector(n, vector3)
		"E":
			Hacer 
				Escribir "Que vector desea mostrar A, B o C"
				Leer aux
				Escribir ""
			Mientras Que Mayusculas(aux) < "A" O Mayusculas(aux) > "C"
			
			Segun Mayusculas(aux)
				"A":
					MostrarVector(n, vector1)
				"B":
					MostrarVector(n, vector2)
				"C": 
					MostrarVector(n, vector3)
			FinSegun
		"F":
			retorno = Verdadero
	FinSegun
FinFuncion


SubProceso Llenar(n, vector Por Referencia, limInf, limSup)
	Definir i Como Entero
	
	Para i = 0 Hasta n-1
		vector[i] = Aleatorio(limInf, limSup)
	FinPara
	Escribir "El vector se ha llenado con éxito"
FinSubProceso


SubProceso Operar(n, vector1, vector2, vector3 Por Referencia, suma)
	Definir i, signo Como Entero
	
	signo = -1
	
	Si suma
		signo = 1
	FinSi
	
	Para i = 0 Hasta n-1
		vector3[i] = vector2[i] + (signo * vector1[i])
	FinPara
FinSubProceso


SubProceso MostrarVector(n, vector)
	Definir i Como Entero
	
	Escribir "El vector es"
	Para i = 0 Hasta n-1
		Escribir sin saltar vector[i], " "
	FinPara
	Escribir ""
FinSubProceso


Algoritmo MenuVectores
	Definir n, vectorA, vectorB, vectorC Como Entero
	Definir estado Como Logico
	
	Escribir "Ingrese la dimensión N del vector"
	Leer n
	
	Dimension vectorA[n], vectorB[n], vectorC[n]
	estado = Falso
	
	Hacer
		estado = menu(n, vectorA, vectorB, vectorC)
	Mientras Que No(estado)
FinAlgoritmo