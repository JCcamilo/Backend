SubProceso inicializarMatriz(matriz Por Referencia, filas,columnas)
	definir i,j Como Entero
	para i<-0 hasta filas-1
		para j<-0 hasta columnas-1
			matriz(i,j)="*"
		FinPara
	FinPara
FinSubProceso

SubProceso imprimirmatriz (matriz, filas, columnas)
	definir i, j Como Entero
	
	para i<-0 hasta filas-1 con paso 1 Hacer
		para j<-0 hasta columnas-1 con paso 1 Hacer
			escribir " " matriz(i,j) " "  sin saltar
		FinPara
		escribir ""
	FinPara
FinSubProceso

SubProceso agregarPalabra(matriz, fila, palabra)
	Definir i, j Como Entero
	Definir letra Como Caracter
	i = fila
	j = Longitud(palabra)
	
	Para j <- 0 Hasta j - 1 Hacer
		matriz[i, j] = Subcadena(palabra, j, j)
	FinPara
FinSubProceso

SubProceso posicion <- buscarR(matrix Por referencia, fila Por Valor)
	Definir i, posicion Como Entero
	posicion = -1
	para i = 0 Hasta 10 con paso 1 Hacer
		si Minusculas(matrix[fila,i]) == "r" Entonces
			posicion = i
			i = 10
		FinSi
	FinPara
FinSubProceso

SubProceso acomodarPalabra(matriz, fila, columna)
	Definir j, offset, pos Como Entero
	
	pos = buscarR(matriz, fila)
	
	Si pos <> 5
		offset = 5 - pos
		Para j = columna-1 Hasta 0 // 
			Si j >= offset
				matriz[fila, j] = matriz[fila, j-offset]
			SiNo
				matriz[fila, j] = "*" 
			FinSi
		FinPara
	FinSi
FinSubProceso

Algoritmo Desafio5
	Definir matriz Como Caracter
	Definir columnas, filas, i Como Entero
	
	columnas = 12
	filas = 9
	Dimension matriz[filas, columnas]
	
	inicializarMatriz(matriz, filas, columnas)
	
	agregarPalabra(matriz, 0, "VECTOR")
	agregarPalabra(matriz, 1, "MATRIX")
	agregarPalabra(matriz, 2, "PROGRAMA")
	agregarPalabra(matriz, 3, "SUBPROGRAMA")
	agregarPalabra(matriz, 4, "SUBPROCESO")
	agregarPalabra(matriz, 5, "VARIABLE")
	agregarPalabra(matriz, 6, "ENTERO")
	agregarPalabra(matriz, 7, "PARA")
	agregarPalabra(matriz, 8, "MIENTRAS")
	
	Para i = 0 Hasta filas-1
		acomodarPalabra(matriz, i, columnas)
	FinPara

	imprimirmatriz(matriz, filas, columnas)
	Escribir buscarR(matriz, 0)
FinAlgoritmo
