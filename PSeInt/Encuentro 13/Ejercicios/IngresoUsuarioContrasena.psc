////	Crear una funci�n llamada "Login", que recibe un nombre de usuario y una contrase�a y que
////	devuelve Verdadero si el nombre de usuario es "usuario1" y si la contrase�a es "asdasd".
////	Adem�s, la funci�n calculara el n�mero de intentos que se ha usado para loguearse, tenemos
////	solo 3 intentos, si nos quedamos sin intentos la funci�n devolver� Falso.

Funcion resultado = Login
	Definir usuario, contrasena Como Caracter
	Definir resultado Como Logico
	Definir i Como Entero
	
	resultado = Falso
	
	Para i = 0 Hasta 2
		Escribir "Posee ", 3-i, " intentos disponibles"
		Escribir "Ingrese usuario y contrase�a"
		Leer usuario, contrasena
		
		Si usuario == "usuario1" Y contrasena == "asdasd"
			resultado = Verdadero
			i = 3
		FinSi
		
		Escribir ""
	FinPara
FinFuncion

Algoritmo IngresoUsuarioContrasena
	Definir ingreso Como Logico
	
	ingreso = Login()
	Escribir "El ingreso es ", ingreso
FinAlgoritmo
