package Entities;

import java.util.Scanner;

/*
Crear una clase llamada Libro que contenga los siguientes atributos: ISBN, Título, Autor,
Número de páginas, y un constructor con todos los atributos pasados por parámetro y un
constructor vacío. Crear un método para cargar un libro pidiendo los datos al usuario y
luego informar mediante otro método el número de ISBN, el título, el autor del libro y el
numero de páginas.
*/
public class Libro {
    private String ISBN;
    private String titulo;
    private String autor;
    private int numPag;

    Scanner leer = new Scanner(System.in).useDelimiter("\n");

    /**
     * Constructor vacío
     */
    public Libro() {
    }

    /**
     * Constructor con valores
     * @param ISBN
     * @param titulo
     * @param autor
     * @param numPag
     * @return
     */
    public Libro(String ISBN, String titulo, String autor, int numPag) {
        this.ISBN = ISBN;
        this.titulo = titulo;
        this.autor = autor;
        this.numPag = numPag;
    }

    public String getISBN() {
        return ISBN;
    }

    public void setISBN(String ISBN) {
        this.ISBN = ISBN;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public int getNumPag() {
        return numPag;
    }

    public void setNumPag(int numPag) {
        this.numPag = numPag;
    }

    @Override
    public String toString() {
        return "Libro{" +
                "ISBN='" + ISBN + '\'' +
                ", titulo='" + titulo + '\'' +
                ", autor='" + autor + '\'' +
                ", numPag=" + numPag +
                '}';
    }
}
/*
    LibroService ls = new LibroService();

    Libro inmune = ls.crearLibro();
    System.out.println(inmune);
 */

