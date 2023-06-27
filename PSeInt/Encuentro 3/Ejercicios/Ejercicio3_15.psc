Algoritmo Ejercicio3_15
	Definir DD, HH, MM, SS, T, Tf Como Real
	Escribir "Ingrese la hora de partida:"
	Leer HH
	Escribir "Ingrese los minutos:"
	Leer MM
	Escribir "Ingrese los segundos:"
	Leer SS
	Escribir "La hora de salida es: ", HH, ":", MM, ":", SS 
	Escribir "Ingrese la cantidad de segundos de viaje:"
	Leer T
	Tf = (HH*3600 + MM*60 + SS + T) % (3600*24) // 1 Día = 86400
	HH = trunc(Tf / 3600)
	MM = trunc((Tf % 3600) / 60)
	SS = trunc((Tf % 3600) % 60)
	Escribir "La hora de llegada será: ", HH, ":", MM, ":", SS
FinAlgoritmo
