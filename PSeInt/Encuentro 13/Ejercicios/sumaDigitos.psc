////	Realizar una funci�n que calcule la suma de los d�gitos de un n�mero.
////	Ejemplo: 25 = 2 + 5 = 7
////	Nota: Para obtener el �ltimo n�mero de un digito de 2 cifras o m�s debemos pensar en el
////	resto de una divisi�n entre 10. Recordar el uso de la funci�n Mod y Trunc.

Funcion resultado = SumaDig(var)
	Definir resultado, i Como Entero
	resultado = 0
	i = 0
	Hacer
		resultado = resultado + trunc(var/(10^i)) % 10
		i = i + 1
	Mientras Que trunc(var/10^i) <> 0
FinFuncion

Algoritmo sumaDigitos
	Definir num Como Entero
	
	Escribir "Ingrese un n�mero"
	Leer num
	
	Escribir "La suma de los digitos de ", num, " es: ", SumaDig(num)
FinAlgoritmo

// 265 -> trunc(265/1) = 265 -> 265%10 = 5
// 265 -> trunc(265/10) = 26 -> 26%10 = 6
// 265 -> trunc(265/100) = 2 -> 2%10 = 2