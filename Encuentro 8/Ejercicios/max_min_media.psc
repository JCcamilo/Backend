//	Escribir un programa que lea números enteros hasta teclear 0 (cero). Al finalizar el
//	programa se debe mostrar el máximo número ingresado, el mínimo, y el promedio de todos ellos.
//	Para poder lograr, por ejemplo, el máximo inicializaremos una variable en cero llamada
//	numeroMaximo. Luego iremos comparando cada número que se ingresa con esta variable. Si es
//	mayor reemplazaremos el valor de numeroMaximo. Por ejemplo si 5>0 entonces el máximo entre
//	estos números será 5. Si luego ingreso el número 2, se evalúa 2>5 lo que resultará falso y por lo
//	tanto el valor 5 de numeroMaximo no se reemplaza. Una lógica similar tendrá el número menor.
Algoritmo max_min_media
	Definir num , max, min, suma, i Como Entero
	Definir media Como Real
	i = 0
	suma = 0
	Hacer
		Escribir "Ingresar un número entero"
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
		Escribir "No se ingresaron números"
	SiNo
		media = suma/(i-1)
		Escribir "El número máximo es ", max
		Escribir "El número mínimo es ", min
		Escribir "El promedio es ", media
		Escribir "Se ingresaron ", i-1, " números"
	FinSi
FinAlgoritmo
