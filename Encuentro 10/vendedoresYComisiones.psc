////	Una compa��a de seguros tiene contratados a n vendedores. Cada vendedor realiza
////	m�ltiples ventas a la semana. La pol�tica de pagos de la compa��a es que cada vendedor
////	recibe un sueldo base m�s un 10% extra por comisiones de sus ventas. El gerente de la
////	compa��a desea saber, por un lado, cu�nto dinero deber� pagar en la semana a cada
////	vendedor por concepto de comisiones de las ventas realizadas, y por otro lado, cu�nto
////	deber� pagar a cada vendedor como sueldo total (sueldo base + comisiones). Para cada
////	vendedor ingresar cuanto es su sueldo base, cuantas ventas realiz� y cuanto cobr� por
////	cada venta.
Algoritmo vendedoresYComisiones
	Definir sueldo, venta, valorVenta, comision Como Real
	Definir vendedor, condicion Como Caracter
	Definir i, cantidadVentas Como Entero
	comision = 0
	condicion = ""
	Hacer
		Escribir "Ingrese el nombre del vendedor"
		Leer vendedor
		Escribir "Ingrese el sueldo del vendedor"
		Leer sueldo
		Escribir "Ingrese la cantidad de ventas"
		Leer cantidadVentas
		Para i = 1 Hasta cantidadVentas Hacer
			Escribir "Cual fu� el valor de la venta No. ", i
			Leer venta
			comision = comision + venta*0.1
		FinPara
		Escribir vendedor, " debe recibir $", comision, " por comisiones."
		Escribir "Adicionalmente, debe recibir un total de: ", comision + sueldo
		Escribir "" 
		Escribir "�Desea ingresar otro vendedor? (s/n)"
		Leer condicion
	Mientras Que Mayusculas(condicion) == "S"
FinAlgoritmo
