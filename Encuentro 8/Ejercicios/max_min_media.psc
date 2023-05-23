//	Escribir un programa que lea n�meros enteros hasta teclear 0 (cero). Al finalizar el
//	programa se debe mostrar el m�ximo n�mero ingresado, el m�nimo, y el promedio de todos ellos.
//	Para poder lograr, por ejemplo, el m�ximo inicializaremos una variable en cero llamada
//	numeroMaximo. Luego iremos comparando cada n�mero que se ingresa con esta variable. Si es
//	mayor reemplazaremos el valor de numeroMaximo. Por ejemplo si 5>0 entonces el m�ximo entre
//	estos n�meros ser� 5. Si luego ingreso el n�mero 2, se eval�a 2>5 lo que resultar� falso y por lo
//	tanto el valor 5 de numeroMaximo no se reemplaza. Una l�gica similar tendr� el n�mero menor.
Algoritmo max_min_media
	Definir num , max, min, suma, i Como Entero
	Definir media Como Real
	i = 0
	suma = 0
	Hacer
		Escribir "Ingresar un n�mero entero"
		Leer num
		Si i = 0
			max = num
			min = num
		SiNo
			Si num > max Y num <> 0
				max = num
			FinSi
			Si num < min Y num <> 0
				min = num
			FinSi
		FinSi
		suma = suma + num
		i = i + 1
	Mientras Que num <> 0
	Si i = 1
		Escribir "No se ingresaron n�meros"
	SiNo
		media = suma/(i-1)
		Escribir "El n�mero m�ximo es ", max
		Escribir "El n�mero m�nimo es ", min
		Escribir "El promedio es ", media
		Escribir "Se ingresaron ", i-1, " n�meros"
	FinSi
FinAlgoritmo
