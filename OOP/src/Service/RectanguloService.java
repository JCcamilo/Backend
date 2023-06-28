package Service;

import Entities.Rectangulo;

import java.util.Scanner;

public class RectanguloService {

    Scanner leer = new Scanner(System.in).useDelimiter("\n");

    public Rectangulo crearRectangulo() {

        System.out.println("Ingrese la base y la altura del rectángulo respectivamente");

        double base = leer.nextDouble();
        double altura = leer.nextDouble();

        return new Rectangulo(base, altura);
    }
}
