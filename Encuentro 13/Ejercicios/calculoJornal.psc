////	Los empleados de una fábrica trabajan en dos turnos: Diurno y Nocturno. Se desea calcular el
////	jornal diario de acuerdo con las siguientes reglas:
////		a) La tarifa de las horas diurnas es de $ 90
////		b) La tarifa de las horas nocturnas es de $ 125
////		c) En caso de ser feriado, la tarifa se incrementa en un 10% si el turno es diurno y en
////		un 15% si el turno es nocturno.
////			
////	El programa debe solicitar la siguiente información al usuario: el nombre del trabajador, el día
////	de la semana, el turno (diurno o nocturno) y la cantidad de horas trabajadas. Además,
////	debemos preguntarle al usuario si el día de la semana (lunes, martes, miércoles, etc.) era
////	festivo o no, para poder calcular el jornal diario. Utilice una función para realizar el cálculo.

Funcion resultado = Jornal(turno, festivo, h)
	Definir resultado Como Real
	
	Segun Minusculas(turno + festivo) /// [turnos = d (diurno) -- n (nocturno)] + [festivo = s (si) -- n (no)]
		"ds":
			resultado = h * 90*1.1
		"dn":
			resultado = h * 90
		"ns":
			resultado = h * 125*1.15
		"nn":
			resultado = h * 125
	FinSegun
FinFuncion

Algoritmo calculoJornal
	Definir nombre, turno, dia, festivo Como Caracter
	Definir h Como Entero
	
	Escribir "Ingrese el nombre del trabajador"
	Leer nombre
	
	Hacer
		Escribir "Ingrese el turno (d/n)"
		Leer turno
	Mientras Que No(Minusculas(turno) = "d" O Minusculas(turno) = "n")
	
	Escribir "Ingrese el día"
	Leer dia
	
	Hacer
		Escribir "¿El día ", dia, " es festivo? (s/n)"
		Leer festivo
	Mientras Que No(Minusculas(festivo) = "s" O Minusculas(festivo) = "n")
	
	Escribir "Ingrese la cantidad de horas trabajadas"
	Leer h
	
	Escribir "El pago de ", nombre, " es $", Jornal(turno, festivo, h)
FinAlgoritmo
