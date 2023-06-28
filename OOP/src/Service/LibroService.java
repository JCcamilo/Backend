package Service;

import Entities.Libro;
import java.util.Scanner;

public class LibroService {

    Scanner leer = new Scanner(System.in).useDelimiter("\n");

    /**
     * Crear libro con los datos ingresados por teclado
     * @return Libro
     */
    public Libro crearLibro() {

        System.out.println("Ingrese el ISBN, Autor, Titulo y Número de páginas respectivamente");

        String isbn = leer.next();
        String autor = leer.next();
        String titulo = leer.next();
        int numPag = leer.nextInt();

        return new Libro(isbn, autor, titulo, numPag);
    }
}
