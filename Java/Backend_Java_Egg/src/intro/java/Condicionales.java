package intro.java;

import java.util.Scanner;

public class Condicionales {
    public static void main(String[] args){

//        esPar();
//        eureka();
//        longitud8();
//        primeraLetraA();
//        esVocal();
//        conversionRomano();
        claseSocio();
    }

    //Crear un programa que dado un numero determine si es par o impar.
    static void esPar(){
        System.out.println("Ingrese un número");
        Scanner leer = new Scanner(System.in);

        int num = leer.nextInt();

        if (num%2 == 0){
            System.out.println("El número " + num + " es par");
        } else {
            System.out.println("El número " + num + " es impar");
        }
    }

    //Crear un programa que pida una frase y si esa frase es igual a “eureka” el programa
    //pondrá un mensaje de Correcto, sino mostrará un mensaje de Incorrecto. Nota: investigar
    //la función equals() en Java.
    static void eureka(){
        System.out.println("Ingrese una frase");
        Scanner leer = new Scanner(System.in);

        String frase = leer.nextLine();

        if (frase.equals("eureka")){
            System.out.println("Correcto");
        } else {
            System.out.println("Incorrecto");
        }
    }

    //Realizar un programa que solo permita introducir solo frases o palabras de 8 de largo. Si el
    //usuario ingresa una frase o palabra de 8 de largo se deberá de imprimir un mensaje por
    //pantalla que diga “CORRECTO”, en caso contrario, se deberá imprimir “INCORRECTO”.
    //Nota: investigar la función Lenght() en Java.
    static void longitud8(){
        System.out.println("Ingrese una frase de 8 caracteres");
        Scanner leer = new Scanner(System.in);

        String frase = leer.nextLine();

        if (frase.length() == 8){
            System.out.println("Correcto");
        } else {
            System.out.println("Incorrecto");
        }
    }

    //Escriba un programa que pida una frase o palabra y valide si la primera letra de esa frase
    //es una ‘A’. Si la primera letra es una ‘A’, se deberá de imprimir un mensaje por pantalla que
    //diga “CORRECTO”, en caso contrario, se deberá imprimir “INCORRECTO”. Nota: investigar
    //la función Substring y equals() de Java.
    static void primeraLetraA(){
        System.out.println("Ingrese una frase");
        Scanner leer = new Scanner(System.in);

        char frase = leer.nextLine().charAt(0);

//        System.out.println(frase.substring(0, 1).equals("A"));

        if (frase == 'A'){
            System.out.println("Correcto");
        } else {
            System.out.println("Incorrecto");
        }
    }

    //Elaborar un algoritmo en el cuál se ingrese una letra y se detecte si se trata de una vocal.
    //Caso contrario mostrar un mensaje. Nota: investigar la función equals() de la clase String.
    static void esVocal(){
        System.out.println("Ingrese un carácter");
        Scanner leer = new Scanner(System.in);

        String letra = leer.nextLine().toLowerCase();

        if (letra.equals("a") || letra.equals("e") || letra.equals("i") || letra.equals("o") || letra.equals("u")) {
            System.out.println("La letra ingresada es una vocal");
        } else {
            System.out.println("La letra ingresa no es una vocal");
        }
    }

    //Elaborar un algoritmo en el cuál se ingrese un número entre 1 y 10 y se muestre su
    //equivalente en romano.
    static void conversionRomano(){
        System.out.println("Ingrese un número");
        Scanner leer = new Scanner(System.in);

        String num = leer.nextLine();

        switch (num){
            case "1":
                num = "I";
                break;
            case "2":
                num = "II";
                break;
            case "3":
                num = "III";
                break;
            case "4":
                num = "IV";
                break;
            case "5":
                num = "V";
                break;
            case "6":
                num = "VI";
                break;
            case "7":
                num = "VII";
                break;
            case "8":
                num = "VIII";
                break;
            case "9":
                num = "IX";
                break;
            case "10":
                num = "X";
                break;
        }
        System.out.println("El número es " + num);
    }

    //Una obra social tiene tres clases de socios:
    //  Los socios tipo ‘A’ abonan una cuota mayor, pero tienen un 50% de descuento en
    //  todos los tipos de tratamientos.
    //  Los socios tipo ‘B’ abonan una cuota moderada y tienen un 35% de descuento para
    //  los mismos tratamientos que los socios del tipo A.
    //  Los socios que menos aportan, los de tipo ‘C’, no reciben descuentos sobre dichos
    //  tratamientos.
    //  Solicite una letra (carácter) que representa la clase de un socio, y luego un valor
    //  real que represente el costo del tratamiento (previo al descuento) y determine el
    //  importe en efectivo a pagar por dicho socio.
    static void claseSocio(){
        Scanner leer = new Scanner(System.in);
        System.out.println("Ingrese un carácter y luego el valor");

        char ch = leer.next().charAt(0);
        float descuento = 0.0f;
        int valor = leer.nextInt();

        switch (ch){
            case 'A':
                descuento = 0.5f;
                break;
            case 'B':
                descuento = 0.35f;
                break;
        }
        System.out.println("El descuento del socio clase " + ch + " es " + descuento*100 + "%");
        System.out.println("El precio final es " + valor*(1-descuento));
    }
}
