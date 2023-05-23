////	Tomando en cuenta el ejercicio 6, mejore el mecanismo de inserción del carácter, facilitando
////	un potencial reordenamiento del vector. Digamos que se pide ingresar el carácter en la posición X 
////	y la misma está ocupada, entonces de existir un espacio en cualquier posición X-n o X+n, desplazar 
////	los caracteres hacia la izq o hacia la derecha para poder ingresar el carácter en cuestión en el
////	lugar deseado. El procedimiento de reordenamiento debe ubicar el espacio más cercano.
////	Por ejemplo, suponiendo la siguiente frase y los subíndices del vector:
////		Hola mundo cruel!
////	Si se desea ingresar el carácter "%" en la posición 8, entonces el resultado con desplazamiento sería:
////		Hola mun%do cruel!
////	Notar que el desplazamiento se hizo hacia la *derecha* porque el espacio de la posición 10 estaba más 
////	cerca de la posición 8 que el espacio de la posición 4. Nota: en caso del que el desplazamiento sea 
////	a la izquierda y se requiera que se remueva la letra, se hará. Por ejemplo, para poner un "%" en la 
////	posición 6, haríamos un desplazamiento a la izquierda y borraríamos la letra h

SubProceso InsertarSimbolo2(DIM, vector, sim, pos) // n = dim
	Definir i, j, izq, der Como Entero
	
	Si vector[pos] == " " O vector[pos] == ""
		vector[pos] = sim
	SiNo
		Para i = 1 Hasta DIM-1
			izq = pos - i
			der = pos + i
			
			Si vector[der] == " " O vector[der] == "" // Buscar por la derecha
				
				Para j = DIM-1 Hasta pos+1 // Recorre el vector al revés
					vector[j] = vector[j-1] // Desplazar a la derecha
				FinPara
				i = DIM-1 // Termina las iteraciones
				
			SiNo
				
				Si vector[izq] == " " O vector[izq] == "" // Buscar por la izquierda
					
					Para j = 0 Hasta pos-1 // Recorre el vector al derecho
						vector[j] = vector[j+1] // Desplazar a la izquierda       
					FinPara
					i = DIM-1 // Termina las iteraciones
				FinSi
			FinSi
		FinPara
		vector[pos] = sim
	FinSi
FinSubProceso


Algoritmo InsertarCaracter2
	Definir frase, vector, char Como Caracter
	Definir i, dim, posicion Como Entero
	
	dim = 20
	Dimension vector[dim]
	
	Escribir "Ingrese una frase"
	Leer frase
	Escribir "Ingrese un carácter para adicionar en la cadena y la posición respectivamente"
	Leer char, posicion
	
	LlenarVector(dim, vector, frase)
	InsertarSimbolo2(dim, vector, char, posicion)
	EscribirVector(dim, vector)
FinAlgoritmo

//// Funciones auxiliares

SubProceso LlenarVector(n, vector Por Referencia, frase)
	Definir i Como Entero
	
	Para i = 0 Hasta n-1
		vector[i] = Subcadena(frase, i, i)
	FinPara
FinSubProceso

SubProceso EscribirVector(n, vector)
	Definir i Como Entero
	
	Para i = 0 Hasta n-1
		Escribir sin saltar vector[i]
	FinPara
	Escribir ""
FinSubProceso

//SubProceso RecorrerVectorPorMitad(n, vector, pos)
//	Definir i, j, disIzq, disDer, mitad Como Entero
//	
//	disIzq = 0
//	disDer = 0
//	
//	Si n%2 == 0
//		mitad = n/2 - 1
//	SiNo
//		mitad = (n - 1)/2
//	FinSi
//	
//	Para i = mitad Hasta pos
//		j = n - 1 - i
//		Si vector[i] == " " O vector[i] == ""
//			disIzq = abs(pos - i)
//		FinSi
//		Si vector[j] == " " O vector[j] == ""
//			disDer = abs(pos - j)
//		FinSi
//	FinPara
//FinSubProceso

//// Opción 2

//	frase = ""
//	
//	Para i = 0 Hasta n-1
//		frase = frase + vector[i]
//	FinPara
/// Desplazar derecha
//			fraseNueva = Subcadena(frase, 0, pos-1) + sim + Subcadena(frase, pos, n-2)
/// Desplazar izquierda
//					fraseNueva = Subcadena(frase, 1, pos) + sim + Subcadena(frase, pos+1, n-1)
/// Llenar una vez definido fraseNueva
//		LlenarVector(n, vector, fraseNueva)
