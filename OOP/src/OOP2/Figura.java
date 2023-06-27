package OOP2;

import java.util.Scanner;

/*
Se está realizando una calculadora grafica, y se requiere calcular algunas áreas y perímetros de unas figuras
geométricas. Las figuras son las siguientes:

Cuadrado (a2) (a*4)
Rectángulo (a*b) 2*(a+b)
Triangulo (b*h/2) (b*3)
Circulo (pi*r2) (2*pi*r)
Hexágono (n*l*a/2) (l*6) a: apotema
Pentágono (n*l*a/2) (l*5) a: apotema
Rombo (D*d/2) (l*4)

El usuario debe elegir la figura geométrica, luego debe ingresar el/los dato/s de la figura geométrica elegida y le debe
mostrar por pantalla el área y el perímetro.

Aclaración: Si el usuario elige una figura, se debe crear un objeto de esa figura seleccionada, y realizar los cálculos
para luego mostrar en pantalla.
 */
public class Figura {

    private String tipo;
    private double area;
    private double perimetro;

    private double l1;
    private double l2;

    Scanner leer = new Scanner(System.in);

    public Figura() {
    }

    public Figura(String tipo) {
        this.tipo = tipo;

        switch (tipo) {
            case "c":
                crearCuadrado();
                break;
            case "r":
                crearRectangulo();
                break;
            case "t":
                crearTriangulo();
                break;
            case "cir":
                crearCirculo();
                break;
            case "h":
                crearHexagono();
                break;
            case "p":
                crearPentagono();
            case "rom":
                crearRombo();
            default:
                System.out.println("Ingresaste una figura incorrecta");
        }
    }

    public void crearCuadrado() {
        System.out.println("Ingrese el lado del cuadrado");
        double l1 = leer.nextDouble();

        area = l1*l1;
        perimetro = 4*l1;

        System.out.println("El área es " + area);
        System.out.println("El perímetro es " + perimetro);
    }
    public void crearRectangulo() {
        System.out.println("Ingrese los lados del rectángulo respectivamente");
        double l1 = leer.nextDouble();
        double l2 = leer.nextDouble();

        area = l1*l2;
        perimetro = 2*(l1+l2);

        System.out.println("El área es " + area);
        System.out.println("El perímetro es " + perimetro);
    }
    public void crearTriangulo() {
        System.out.println("Ingrese la base y la altura del triángulo respectivamente");
        double l1 = leer.nextDouble();
        double l2 = leer.nextDouble();

        area = l1*l2/2;
        perimetro = 3*l1;

        System.out.println("El área es " + area);
        System.out.println("El perímetro es " + perimetro);
    }
    public void crearCirculo() {
        System.out.println("Ingrese el radio del circulo");
        double l1 = leer.nextDouble();

        area = Math.PI*l1*l1;
        perimetro = 2*Math.PI*l1;

        System.out.println("El área es " + area);
        System.out.println("El perímetro es " + perimetro);
    }
    public void crearHexagono() {
        System.out.println("Ingrese lado y apotema del hexágono respectivamente");
        double l1 = leer.nextDouble();
        double l2 = leer.nextDouble();

        area = 6*l1*l2/2;
        perimetro = 6*l1;

        System.out.println("El área es " + area);
        System.out.println("El perímetro es " + perimetro);
    }
    public void crearPentagono() {
        System.out.println("Ingrese lado y apotema del pentágono respectivamente");
        double l1 = leer.nextDouble();
        double l2 = leer.nextDouble();

        area = 5*l1*l2/2;
        perimetro = 5*l1;

        System.out.println("El área es " + area);
        System.out.println("El perímetro es " + perimetro);
    }

    public void crearRombo() {
        System.out.println("Ingrese las diagonales del rombo y su lado");
        double d1 = leer.nextDouble();
        double d2 = leer.nextDouble();
        double l1 = leer.nextDouble();

        area = d1*d2/2;
        perimetro = 4*l1;

        System.out.println("El área es " + area);
        System.out.println("El perímetro es " + perimetro);
    }
}

/*
    Scanner leer = new Scanner(System.in);

    System.out.println("Ingrese un tipo de figura (c, r, t, cir, h, p, rom)");
    Figura fig = new Figura(leer.next());
*/