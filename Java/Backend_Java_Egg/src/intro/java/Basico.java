package intro.java;

import java.util.Scanner;

public class Basico {
    public static void main(String[] args){
//        sumar2Numeros();
//        escribirNombre();
//        minusMayus();
//        cent2Fahrenheit();
//        operarNum();
//        equivalMin();
//        cambioValor();

    }

    //Escribir un programa que pida dos números enteros por teclado y calcule la suma de los
    //dos. El programa deberá después mostrar el resultado de la suma
    static void sumar2Numeros(){
        System.out.println("Ingrese dos números");
        Scanner leer = new Scanner(System.in);

        int num1 = leer.nextInt();
        int num2 = leer.nextInt();
        int suma = num1 + num2;

        System.out.println("La suma es " + suma);
    }

    //Escribir un programa que pida tu nombre, lo guarde en una variable y lo muestre por
    //pantalla.
    static void escribirNombre(){
        System.out.println("Ingrese su nombre");
        Scanner leer = new Scanner(System.in);

        String nombre = leer.nextLine();

        System.out.println("Su nombre es " + nombre);
    }

    //Escribir un programa que pida una frase y la muestre toda en mayúsculas y después toda
    //en minúsculas. Nota: investigar la función toUpperCase() y toLowerCase() en Java.
    static void minusMayus(){
        System.out.println("Ingrese una frase");
        Scanner leer = new Scanner(System.in);

        String frase = leer.nextLine();

        System.out.println(frase.toUpperCase());
        System.out.println(frase.toLowerCase());
    }

    //Dada una cantidad de grados centígrados se debe mostrar su equivalente en grados
    //Fahrenheit. La fórmula correspondiente es: F = 32 + (9 * C / 5).
    static void cent2Fahrenheit(){
        System.out.println("Ingrese un valor en grados centígrados");
        Scanner leer = new Scanner(System.in);

        int cent = leer.nextInt();
        float fahrenheit = 32 + (9*cent/5);

        System.out.println("Los grados fahrenheit son " + fahrenheit);
    }

    //Escribir un programa que lea un número entero por teclado y muestre por pantalla el
    //doble, el triple y la raíz cuadrada de ese número. Nota: investigar la función Math.sqrt().
    static void operarNum(){
        System.out.println("Ingrese un número");
        Scanner leer = new Scanner(System.in);

        int num = leer.nextInt();

        System.out.println("El doble del número es " + 2*num);
        System.out.println("El triple del número es " + 3*num);
        System.out.println("La raíz del número es " + Math.sqrt(num));
    }

    //Dado un tiempo en minutos, calcular su equivalente en días y horas. Por ejemplo, si el
    //usuario ingresa 1600 minutos, el sistema debe calcular su equivalente: 1 día, 2 horas.
    static void equivalMin(){
        System.out.println("Ingrese los minutos");
        Scanner leer = new Scanner(System.in);

        double total = leer.nextDouble();

//        float dia = total%(60*24);

        double mes = Math.floor(total /(60*24*30)); // trunc(total / (60*24*30))
        double dia = Math.floor((total /(60*24*30) - mes)*30); // trunc((total % (60*24*30)) / (60*24))
        double hr = Math.floor(total /60 - dia*24 - mes*24*30); // trunc(total % (60*24) / 60)
        double min = total%60;

        System.out.println("Es " + mes + " mes con " + dia + " días con " + hr + " horas y " + min + " minutos");
    }

    //Declarar cuatro variables de tipo entero A, B, C y D y asignarle un valor diferente a cada
    //una. A continuación, realizar las instrucciones necesarias para que: B tome el valor de C, C
    //tome el valor de A, A tome el valor de D y D tome el valor de B. Mostrar los valores
    //iniciales y los valores finales de cada variable. Utilizar sólo una variable auxiliar.
    static void cambioValor(){
        int A = 1;
        int B = 2;
        int C = 3;
        int D = 4;
        int aux;

        System.out.println("A: " + A + ", B: " + B + ", C: " + C + ", D: " + D);

        aux = B;
        B = C;
        C = A;
        A = D;
        D = aux;

        System.out.println("A: " + A + ", B: " + B + ", C: " + C + ", D: " + D);
    }
}
