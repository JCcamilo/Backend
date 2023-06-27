////	Realizar una función que reciba un numero ingresado por el usuario y averigüe si el número
////	tiene todos sus dígitos impares (ejemplo: 333, 55, etc.). Para esto vamos a tener que separar el
////	numero en partes (si es un numero de más de un digito) y ver si cada número es par o impar.
////	Nota: recordar el uso de la función Mod y Trunc(). No podemos pasar el numero a cadena para
////	realizar el ejercicio.

Funcion resultado = DigPar(var)
	Definir resultado Como Logico
	Definir i Como Entero
	
	resultado = Verdadero
	i = 0
	
	Hacer
		Si trunc(var/10^i) % 2 <> 0
			resultado = Falso
		FinSi
		i = i + 1
	Mientras Que resultado Y trunc(var/10^i) <> 0
FinFuncion

Algoritmo DigParOImpar
	Definir num Como Entero
	
	Escribir "Ingrese un número"
	Leer num
	
	Escribir "Es ", DigPar(num), " que los digitos de ", num, " son pares"
FinAlgoritmo

// trunc(335/1) = 335 -> 335 % 2 = 1
/// Falso
// trunc(264/1) = 264 -> 264 % 2 = 0
// trunc(264/10) = 26 -> 26 % 2 = 0
// trunc(264/100) = 2 -> 2 % 2 = 0
/// Verdadero