//	Escriba un programa para obtener el grado de eficiencia de un operario de una fábrica de
//	tornillos, de acuerdo a las siguientes dos condiciones que se le imponen para un período
//	de prueba:
//		x Producir menos de 200 tornillos defectuosos.
//		x Producir más de 10000 tornillos sin defectos.
//		x El grado de eficiencia se determina de la siguiente manera:
//		x Si no cumple ninguna de las condiciones, grado 5.
//		x Si sólo cumple la primera condición, grado 6.
//		x Si sólo cumple la segunda condición, grado 7.
//		x Si cumple las dos condiciones, grado 8
//	Nota: para trabajar este ejercicio de manera prolija, ir probando cada inciso 
//	que pide el ejercicio. No hacer todos al mismo tiempo y después probar.

Algoritmo Ejercicio6_3a
	Definir def, sinDef, ef Como Entero
	Definir grado Como Real
	Escribir "Ingrese la cantidad de tornillos defectuosos: "
	Leer def
	Escribir "Ingrese la cantidad de tornillos sin defectos: "
	Leer sinDef
	grado = 0
	Si def < 200
		grado = grado + 1
	FinSi
	Si sinDef > 10000
		grado = grado + 0.1
	FinSi
	Segun grado Hacer
		1.1:
			Escribir "El grado de eficiencia es 8"
		1.0: 
			Escribir "El grado de eficiencia es 6"
		0.1:
			Escribir "El grado de eficiencia es 7"
		0:
			Escribir "El grado de eficiencia es 5"
	FinSegun
FinAlgoritmo
