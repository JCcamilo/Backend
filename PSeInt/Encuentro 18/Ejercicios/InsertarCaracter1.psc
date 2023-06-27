////	Disponemos de un vector unidimensional de 20 elementos de tipo car�cter. Se pide
////	desarrollar un programa que:
////		a) Pida una frase al usuario y luego ingrese la frase dentro del arreglo letra por letra.
////		Ayuda: utilizar la funci�n Subcadena de PSeInt.
////		b) Una vez completado lo anterior, pedirle al usuario un car�cter cualquiera y una
////		posici�n dentro del arreglo, y el programa debe intentar ingresar el car�cter en la
////		posici�n indicada, si es que hay lugar (es decir la posici�n est� vac�a o es un espacio
////		en blanco). De ser posible debe mostrar el vector con la frase y el car�cter ingresado,
////		de lo contrario debe darle un mensaje al usuario de que esa posici�n estaba ocupada.
////	Por ejemplo, suponiendo la siguiente frase y los sub�ndices del vector:
////		Hola mundo cruel!
////	Si se desea ingresar el car�cter "%" en la posici�n 10, entonces el resultado ser�a:
////		Hola mundo%cruel!

SubProceso InsertarSimbolo1(vector Por Referencia, sim, pos, ind Por Referencia)
	Si vector[pos] == " " O vector[pos] == ""
		vector[pos] = sim
		ind = Verdadero
	SiNo
		Escribir "No se pudo agregar el s�mbolo definido en la posici�n ingresada"
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
	Escribir "Ingrese un car�cter para adicionar en la cadena y la posici�n respectivamente"
	Leer simbolo, posicion
	
	LlenarVector(dim, vector, frase)
	InsertarSimbolo1(vector, simbolo, posicion, indicador)
	
	Si indicador /// Si indicador == Verdadero
		Escribir "El s�mbolo definido se pudo agregar en la posici�n ingresada y su vector es:"
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
