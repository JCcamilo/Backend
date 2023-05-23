////	Crear una función llamada "Login", que recibe un nombre de usuario y una contraseña y que
////	devuelve Verdadero si el nombre de usuario es "usuario1" y si la contraseña es "asdasd".
////	Además, la función calculara el número de intentos que se ha usado para loguearse, tenemos
////	solo 3 intentos, si nos quedamos sin intentos la función devolverá Falso.

Funcion resultado = Login
	Definir usuario, contrasena Como Caracter
	Definir resultado Como Logico
	Definir i Como Entero
	
	resultado = Falso
	
	Para i = 0 Hasta 2
		Escribir "Posee ", 3-i, " intentos disponibles"
		Escribir "Ingrese usuario y contraseña"
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
