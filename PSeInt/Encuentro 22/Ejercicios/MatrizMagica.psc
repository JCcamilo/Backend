//Una matriz mágica es una matriz cuadrada (tiene igual número de filas que de columnas) que
//tiene como propiedad especial que la suma de las filas, las columnas y las diagonales es igual.
//Por ejemplo:
//	2 7 6
//	9 5 1
//	4 3 8
//En la matriz de ejemplo las sumas son siempre 15. Considere el problema de construir un
//algoritmo que compruebe si una matriz de datos enteros es mágica o no, y en caso de que
//sea mágica escribir la suma. Además, el programa deberá comprobar que los números
//introducidos son correctos, es decir, están entre el 1 y el 9. El usuario ingresa el 
//tamaño de la matriz que no debe superar orden igual a 10.

Funcion resultado <- SumarDiagInv(matriz, DIM)
	Definir i, resultado Como Entero
	
	resultado = 0
	
	Para i = 0 Hasta DIM-1
		resultado = resultado + matriz[i, DIM-1-i] // [0, n] -> [1, n-1] -> [2, n-2] -> ... -> [n, 0]
	FinPara
FinFuncion

Funcion resultado <- SumarDiag(matriz, DIM)
	Definir i, resultado Como Entero
	
	resultado = 0
	
	Para i = 0 Hasta DIM-1
		resultado = resultado + matriz[i, i]
	FinPara
FinFuncion

Funcion resultado <- SumarCol(matriz, M, N, col)
	Definir i, resultado Como Entero
	
	resultado = 0
	
	Para i = 0 Hasta M-1
		resultado = resultado + matriz[i, col]
	FinPara
FinFuncion

Funcion resultado <- SumarFila(matriz, M, N, fila)
	Definir i, resultado Como Entero
	
	resultado = 0
	
	Para i = 0 Hasta N-1
		resultado = resultado + matriz[fila, i]
	FinPara
FinFuncion

/// Primer método con SubProcesos 

SubProceso EsMagica(matriz, DIM)
	Definir i, j, diag, diagInv, col, fila Como Entero
	
	i = 0
	
	diag = SumarDiag(matriz, DIM)
	diagInv = SumarDiagInv(matriz, DIM)
	
	Si diag == diagInv
		Escribir "Las diagonales poseen la misma suma"
		Hacer
			fila = SumarFila(matriz, DIM, DIM, i)
			col = SumarCol(matriz, DIM, DIM, i)
			
			i = i + 1
		Mientras Que fila == col Y i < DIM
	FinSi
	
	Si i == DIM
		Escribir "La matriz es mágica y su suma es ", diag
	SiNo
		Escribir "La matriz no es mágica"
	FinSi
FinSubProceso

/// Segundo método con algoritmo

SubProceso EsMagicaOpt(matriz, DIM)
	Definir i, j, diag, diagInv, column, row Como Entero
	
	diag = 0
	diagInv = 0 
	column = 0
	row = 0
	
	Para i = 0 Hasta DIM-1
		row = 0
		column = 0
		Para j = 0 Hasta DIM-1
			row = row + matriz[i,j] // matriz[i,j] recorre las filas
			column = column + matriz[j,i] // matriz[j,i] recorre las columnas
			
			Si i == j
				diag = diag + matriz[i,j]
			FinSi
			Si i + j == DIM-1
				diagInv = diagInv + matriz[i,j]
			FinSi
		FinPara
		Si No(row == column)
			i = DIM
		FinSi
	FinPara
	
	Si diag == diagInv Y i == DIM
		Escribir "La matriz es mágica y su suma es ", diag
	SiNo
		Escribir "La matriz no es mágica"
	FinSi
FinSubProceso

Algoritmo MatrizMagica
	Definir i, DIM, diag, diagInv, fila, col Como Entero
	
	Escribir "Ingrese el tamaño de la matriz"
	Leer DIM
	
	Definir matriz Como Entero
	Dimension matriz[DIM, DIM]
	
//	DefinirMatriz(matriz, DIM, DIM)
	LlenarMatriz(matriz, DIM, DIM, 1, 9)
	Escribir "Su matriz es"
	EscribirMatriz(matriz, DIM, DIM)
	Escribir ""
	
	EsMagica(matriz, DIM)
	EsMagicaOpt(matriz, DIM)
	
FinAlgoritmo

//// SubProcesos auxiliares

SubProceso EscribirMatriz(matriz, M, N)
	Definir i, j Como Entero
	
	Para i = 0 Hasta M-1
		Para j = 0 Hasta N-1
			Escribir matriz(i, j), " " Sin Saltar
		FinPara
		Escribir ""
	FinPara
FinSubProceso

SubProceso LlenarMatriz(matriz, M, N, limInf, limSup)
	Definir i, j Como Entero
	
	Para i = 0 Hasta M-1
		Para j = 0 Hasta N-1
			matriz(i, j) = Aleatorio(limInf, limSup)
		FinPara
	FinPara
FinSubProceso

SubProceso DefinirMatriz(matriz, M, N)
	Definir i, j, num Como Entero 
	
	Para i = 0 Hasta M-1
		Para j = 0 Hasta N-1
			Escribir "Ingrese el valor de la posición (", i, ", ", j, ")" Sin Saltar
			Leer num
			matriz(i, j) = num
		FinPara
	FinPara
FinSubProceso
