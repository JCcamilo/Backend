package Service;

import Entities.Operacion;
import java.util.Scanner;

public class OperacionService {

    Scanner leer = new Scanner(System.in).useDelimiter("\n");

    /**
     * Crear operación ingresando los números por teclado
     * @return Circunferencia
     */
    public Operacion crearOperacion() {

        System.out.println("Ingrese el número 1 y 2 respectivamente");

        double num1 = leer.nextDouble();
        double num2 = leer.nextDouble();

        return new Operacion(num1, num2);
    }
}
