//Crear una matriz que contenga 3 columnas y la cantidad filas que decida el usuario. Las dos
//primeras columnas contendrán valores enteros ingresados por el usuario y en la 3 columna se
//deberá almacenar el resultado de sumar el número de la primera y segunda columna. Mostrar
//la matriz de la siguiente forma:
//	3 + 5 = 8
//	4 + 3 = 7
//	1 + 4 = 5

Algoritmo MatrizResultadoSuma
	Definir i, j, M, N, num Como Entero
	
	Escribir "Ingrese el número de filas de la matriz"
	Leer M
	N = 3
	
	Definir matriz Como Entero
	Dimension matriz[M,N]
	
	Para i = 0 Hasta M-1
		Para j = 0 Hasta 1
			Escribir "Ingrese el número ", j+1, " de la fila ", i+1
			Leer num
			matriz[i,j] = num
		FinPara
		matriz[i,N-1] = matriz[i,0] + matriz[i,1]
	FinPara
	
	Para i = 0 Hasta M-1
		Para j = 0 Hasta N-1
			Escribir matriz(i, j) Sin Saltar
			Segun j 
					0:
						Escribir " + " Sin Saltar
					1: 
						Escribir " = " Sin Saltar
			FinSegun
		FinPara
		Escribir ""
	FinPara
FinAlgoritmo