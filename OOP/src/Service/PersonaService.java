package Service;

import Entities.Persona;

import java.util.Locale;
import java.util.Scanner;

public class PersonaService {

    Scanner scan = new Scanner(System.in).useDelimiter("\n");

    public Persona crearPersona() {


        System.out.println("Ingrese el nombre, edad, peso y altura respectivamente");

        String nombre = scan.next();
        int edad = scan.nextInt();
        double peso = scan.nextDouble();
        double altura = scan.nextDouble();
        char sexo;
        do {
            System.out.println("Ingrese el sexo (H, M, O)");
            sexo = scan.next().toUpperCase().charAt(0);
        } while (sexo != 'H' && sexo != 'M' && sexo != 'O');

        return new Persona(nombre, edad, sexo, peso, altura);
    }
}
