////	Un docente de Programación tiene un listado de 3 notas registradas por cada uno de sus
////	N estudiantes. La nota final se compone de un trabajo práctico Integrador (35%), una
////	Exposición (25%) y un Parcial (40%). El docente requiere los siguientes informes claves
////	de sus estudiantes:
////	* Nota promedio final de los estudiantes que reprobaron el curso. Un estudiante
////	reprueba el curso si tiene una nota final inferior a 6.5
////	* Porcentaje de alumnos que tienen una nota de integrador mayor a 7.5.
////	* La mayor nota obtenida en las exposiciones.
////	* Total de estudiantes que obtuvieron en el Parcial entre 4.0 y 7.5.
////	El programa pedirá la cantidad de alumnos que tiene el docente y en cada alumno pedirá
////	las 3 notas y calculará todos informes claves que requiere el docente.
Algoritmo notasNestudiantes
	Definir integ, expo, parcial, mediaReprobados, porcentajeInteg, mayorExpo, totalParcial, notaFinal Como Real
	Definir i, alumnos, cantReprobados Como Entero
	Escribir "Ingrese la cantidad de estudiantes que posee el docente"
	Leer alumnos
	mediaReprobados = 0
	cantReprobados = 0
	porcentajeInteg = 0
	mayorExpo = 0
	totalParcial = 0
	Para i = 1 Hasta alumnos Hacer
		Escribir "Ingrese la nota del integrador (35%) para el estudiante ", i
		Leer integ
		Escribir "Ingrese la nota de la exposición (25%) para el estudiante ", i
		Leer expo
		Escribir "Ingrese la nota de la exposición (40%) para el estudiante ", i
		Leer parcial
		notaFinal = integ*0.35 + expo*0.25 + parcial*0.4
		Si notaFinal < 6.5
			mediaReprobados = mediaReprobados + notaFinal
			cantReprobados = cantReprobados + 1
		FinSi
		Si integ > 7.5
			porcentajeInteg = porcentajeInteg + 1
		FinSi
		Si expo > mayorExpo
			mayorExpo = expo
		FinSi
		Si parcial > 4 Y parcial < 7.5
			totalParcial = totalParcial + 1
		FinSi
	FinPara
	Si cantReprobados = 0
		Escribir "No hay estudiantes reprobados"
	SiNo
		mediaReprobados = mediaReprobados/cantReprobados
		Escribir "El promedio final de los estudiantes que reprobaron es ", mediaReprobados
	FinSi
	porcentajeInteg = porcentajeInteg/alumnos*100
	Escribir "El porcentaje de alumnos que tiene una nota mayor a 7.5 en el integrador es ", porcentajeInteg, "%"
	Escribir "La nota mayor de la exposición es ", mayorExpo
	Escribir "El total de estudiantes que obtuvieron entre 4 y 7,5 en el parcial es ", totalParcial
FinAlgoritmo