////	Disponemos de un vector unidimensional de 20 elementos de tipo carácter. Se pide
////	desarrollar un programa que:
////		a) Pida una frase al usuario y luego ingrese la frase dentro del arreglo letra por letra.
////		Ayuda: utilizar la función Subcadena de PSeInt.
////		b) Una vez completado lo anterior, pedirle al usuario un carácter cualquiera y una
////		posición dentro del arreglo, y el programa debe intentar ingresar el carácter en la
////		posición indicada, si es que hay lugar (es decir la posición está vacía o es un espacio
////		en blanco). De ser posible debe mostrar el vector con la frase y el carácter ingresado,
////		de lo contrario debe darle un mensaje al usuario de que esa posición estaba ocupada.
////	Por ejemplo, suponiendo la siguiente frase y los subíndices del vector:
////		Hola mundo cruel!
////	Si se desea ingresar el carácter "%" en la posición 10, entonces el resultado sería:
////		Hola mundo%cruel!

SubProceso InsertarSimbolo1(vector Por Referencia, sim, pos, ind Por Referencia)
	Si vector[pos] == " " O vector[pos] == ""
		vector[pos] = sim
		ind = Verdadero
	SiNo
		Escribir "No se pudo agregar el símbolo definido en la posición ingresada"
	FinSi
FinSubProceso

Algoritmo InsertarCaracter1
	Definir frase, vector, simbolo Como Caracter
	Definir indicador Como Logico
	Definir dim, posicion Como Entero
	
	dim = 20
	indicador = Falso
	Dimension vector[dim]
	
	Escribir "Ingrese una frase"
	Leer frase
	Escribir "Ingrese un carácter para adicionar en la cadena y la posición respectivamente"
	Leer simbolo, posicion
	
	LlenarVector(dim, vector, frase)
	InsertarSimbolo1(vector, simbolo, posicion, indicador)
	
	Si indicador /// Si indicador == Verdadero
		Escribir "El símbolo definido se pudo agregar en la posición ingresada y su vector es:"
		EscribirVector(dim, vector)
	FinSi	
FinAlgoritmo

//// Funciones auxiliares

SubProceso EscribirVector(n, vector)
	Definir i Como Entero
	
	Para i = 0 Hasta n-1
		Escribir sin saltar vector[i]
	FinPara
	Escribir ""
FinSubProceso

SubProceso LlenarVector(n, vector Por Referencia, frase)
	Definir i Como Entero
	
	Para i = 0 Hasta n-1
		vector[i] = Subcadena(frase, i, i)
	FinPara
FinSubProceso
