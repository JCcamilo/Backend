Funcion superficie <- calcularSuperficie(alto, largo)
	Definir superficie Como Real
	
	superficie = alto*largo
FinFuncion

Funcion volumen <- calcularVolumen(alto, largo, espesor)
	Definir volumen Como Real
	
	Escribir "Ingresar alto"
	Leer ancho
	Escribir "Ingresar largo"
	Leer largo
	Escribir "
	volumen = alto*largo*volumen
FinFuncion

SubProceso calcularContrapisos()
	Definir alto, largo, espesor, volumen Como Real
	
	Escribir "Ingresar alto, largo y espesor respectivamente en metros"
	Leer alto, largo, espesor
	volumen = calcularVolumen(alto, largo, espesor)
	
	Escribir "Se necesitan ", volumen*105, " kg de cemento"
	Escribir "Se necesitan ", volumen*0.45, " m3 de arena"
	Escribir "Se necesitan ", volumen*0.9, " m3 de piedra"
FinSubProceso

SubProceso menu()
	
FinSubProceso

Algoritmo sin_titulo
	
FinAlgoritmo
