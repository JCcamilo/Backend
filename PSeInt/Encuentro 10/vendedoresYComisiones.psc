////	Una compañía de seguros tiene contratados a n vendedores. Cada vendedor realiza
////	múltiples ventas a la semana. La política de pagos de la compañía es que cada vendedor
////	recibe un sueldo base más un 10% extra por comisiones de sus ventas. El gerente de la
////	compañía desea saber, por un lado, cuánto dinero deberá pagar en la semana a cada
////	vendedor por concepto de comisiones de las ventas realizadas, y por otro lado, cuánto
////	deberá pagar a cada vendedor como sueldo total (sueldo base + comisiones). Para cada
////	vendedor ingresar cuanto es su sueldo base, cuantas ventas realizó y cuanto cobró por
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
			Escribir "Cual fué el valor de la venta No. ", i
			Leer venta
			comision = comision + venta*0.1
		FinPara
		Escribir vendedor, " debe recibir $", comision, " por comisiones."
		Escribir "Adicionalmente, debe recibir un total de: ", comision + sueldo
		Escribir "" 
		Escribir "¿Desea ingresar otro vendedor? (s/n)"
		Leer condicion
	Mientras Que Mayusculas(condicion) == "S"
FinAlgoritmo
