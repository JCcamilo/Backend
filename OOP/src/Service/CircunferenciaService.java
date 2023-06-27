package Service;

import Intro.Circunferencia;

import java.util.Scanner;

public class CircunferenciaService {

    Scanner leer = new Scanner(System.in).useDelimiter("\n");

    /**
     * Crear circunferencia ingresando el radio por teclado
     * @return Circunferencia
     */
    public Circunferencia crearCircunferencia(){

        System.out.println("Ingrese el radio");

        return new Circunferencia(leer.nextDouble());
    }

}
