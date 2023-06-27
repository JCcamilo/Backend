/*
How to define var types.
*/

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {

        byte int8 = 127; // 0
        short int16 = 32767; // 0
        int int32 = 2_147_483_647; // 0
        long int64 = 9_223_372_036_854_775_807L; // 0
        float dec32 = 0.0f; // 0.0
        double dec64 = 0.0d; // 0.0
        boolean flag = false; // false
        char character = 'A'; // '\u0000'
        String text = "Text"; // Null

        System.out.print("Orden ascendente i++");

        for (int i = 0; i < 5; i++){
        System.out.print(" " + i);
        }

        System.out.println();
        System.out.print("Orden descendente i--");

        for (int i = 4; i >= 0; i--){
            System.out.print(" " + i);
        }

        System.out.println();

        Scanner leer = new Scanner(System.in);
        System.out.println("Ingrese su nombre:");
        String nombre = leer.nextLine();

        System.out.println("Ingrese su edad:");
        int edad = leer.nextInt();

        System.out.println("Su nombres es " + nombre + " y su edad es " + edad);
    }
}