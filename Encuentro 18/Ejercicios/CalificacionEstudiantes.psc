////	Crear un vector que contenga 100 notas de 100 supuestos estudiantes, con valores entre 0 y
////	20 generadas aleatoriamente mediante el uso de la función azar() o aleatorio() de PseInt.
////	Luego, de acuerdo a las notas contenidas, el programa debe indicar cuántos estudiantes son:
////		a) Deficientes 0-5
////		b) Regulares 6-10
////		c) Buenos 11-15
////		d) Excelentes 16-20

Algoritmo CalificacionEstudiantes
	Definir dim, notas, alumnos, i Como Entero
	Definir textos Como Caracter
	
	dim = 100
	Dimension notas[dim], alumnos[4], textos[4]
	textos[0] = "deficientes"
	textos[1] = "regulares"
	textos[2] = "buenos"
	textos[3] = "excelentes"

	Llenar(4, alumnos, 0, 0)
	Llenar(dim, notas, 0, 20)
	
	Para i = 0 Hasta dim-1
		Segun notas[i]
			1, 2, 3, 4, 5:
				alumnos[0] = alumnos[0] + 1
			6, 7, 8, 9, 10:
				alumnos[1] = alumnos[1] + 1
			11, 12, 13, 14, 15:
				alumnos[2] = alumnos[2] + 1
			16, 17, 18, 19, 20:
				alumnos[3] = alumnos[3] + 1
		FinSegun
	FinPara
	
	Para i = 0 Hasta 3
		Escribir "La cantidad de estudiantes ", textos[i], " es: ", alumnos[i]
	FinPara
FinAlgoritmo

//// Funciones auxiliares

SubProceso Llenar(n, vector Por Referencia, limInf, limSup)
	Definir i Como Entero
	
	Para i = 0 Hasta n-1
		vector[i] = Aleatorio(limInf, limSup)
	FinPara
FinSubProceso