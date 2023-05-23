//Una distribuidora de Nescafé tiene 4 representantes que viajan por toda la Argentina
//ofreciendo sus productos. Para tareas administrativas el país está dividido en cinco zonas:
//Norte, Sur, Este, Oeste y Centro. Mensualmente almacena sus datos y obtiene distintas
//estadísticas sobre el comportamiento de sus representantes en cada zona. Se desea hacer un
//programa que lea el monto de las ventas de los representantes en cada zona y calcule luego:
//		a) el total de ventas de una zona introducida por teclado
//		b) el total de ventas de un vendedor introducido por teclado en cada una de las zonas
//		c) el total de ventas de todos los representantes.
SubProceso Menu(matriz, M, N)
	Definir opc Como Caracter
	
	Escribir ""
	Hacer
	Escribir "A. El total de ventas de una zona introducida por teclado."
	Escribir "B. El total de ventas de un vendedor."
	Escribir "C. El total de ventas de todos los representantes."
	Escribir "S. Salir"
	Escribir "Ingrese la opción para el menú (A, B, C, S)"
	Leer opc
	opc = Mayusculas(opc)
	Escribir ""
	Mientras Que No(opc = "A" O opc = "B" O opc = "C" O opc = "S")
	
	Segun Mayusculas(opc)
		"A":
			TotalVentasZona(matriz, M, N)
		"B":
			TotalVentasVendedor(matriz, M, N)
		"C":
			TotalVentas(matriz, M, N)
		"S":
			Escribir "Terminando ejecución"
			
	FinSegun
FinSubProceso

SubProceso TotalVentasZona(matriz, M, N)
	Definir zona Como Caracter
	Definir j, fila, suma Como Entero
	
	suma = 0
	
	Hacer 
		Escribir "Ingrese la zona (N, S, E, O, C)"
		Leer zona
		zona = Mayusculas(zona)
	Mientras Que No(zona = "N" O zona = "S" O zona = "E" O zona = "O" O zona = "C")
	
	Segun zona
		"N":
			fila = 0
		"S":
			fila = 1
		"E":
			fila = 2
		"O":
			fila = 3
		"C":
			fila = 4
	FinSegun
	
	Para j = 0 Hasta N-1
		suma = suma + matriz[fila,j]
	FinPara
	
	Escribir "La suma de ventas de la zona ", zona, " es ", suma
	
	Menu(matriz, M, N)
FinSubProceso

SubProceso TotalVentasVendedor(matriz, M, N)
	Definir i, suma, vendedor Como Entero
	
	suma = 0
	
	Hacer 
		Escribir "Ingrese el vendedor (1, 2, 3, 4)"
		Leer vendedor
	Mientras Que vendedor < 1 O vendedor > 4
	
	Para i = 0 Hasta M-1
		suma = suma + matriz[i,vendedor-1]
	FinPara
	
	Escribir "La suma de ventas del vendedor ", vendedor, " es ", suma
	
	Menu(matriz, M, N)
FinSubProceso

SubProceso TotalVentas(matriz, M, N)
	Definir i, j, suma Como Entero
	
	suma = 0
	
	Para i = 0 Hasta M-1
		Para j = 0 Hasta N-1
			suma = suma + matriz[i,j]
		FinPara
	FinPara
	
	Escribir "La suma total de ventas es ", suma
	
	Menu(matriz, M, N)
FinSubProceso


Algoritmo EstadisticasNescafe
	Definir i, j, M, N Como Entero
	
	M = 5 // Zonas
	N = 4 // Vendedores
	Definir matriz Como Entero
	Dimension matriz[M,N]
	
	LlenarMatriz(matriz, M, N, 10, 20)
	
	Menu(matriz, M, N)
	
FinAlgoritmo

//// SubProcesos Auxiliares

SubProceso LlenarMatriz(matriz, M, N, limInf, limSup)
	Definir i, j Como Entero
	
	Para i = 0 Hasta M-1
		Para j = 0 Hasta N-1
			matriz(i, j) = Aleatorio(limInf, limSup)
		FinPara
	FinPara
FinSubProceso