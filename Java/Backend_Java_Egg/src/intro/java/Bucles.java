package intro.java;

import java.util.Scanner;

public class Bucles {
    public static void main(String[] args){

//        promedioEstaturas();
//        dispRS232();
//        dibujarCuadrado();
//        limitePositivo();
//        menuOperaciones();
//        calcNums();
//        divisor5();
//        divisonRestasSucesivas();
//        adivinarMult();
//        numDigitos();
        contadorE();
    }

    //Leer la altura de N personas y determinar el promedio de estaturas que se encuentran por
    //debajo de 1.60 mts. y el promedio de estaturas en general.
    static void promedioEstaturas(){
        Scanner leer = new Scanner(System.in);
        float prom = 0f;
        float promBajo = 0f;
        float num = 0f;

        System.out.println("Ingrese la cantidad de personas");
        int N = leer.nextInt();
        int NBajo = 0;

        for (int i = 0; i < N; i++){
            System.out.println("¿Cuál es la estatura de la persona " + i + "?");
            num = leer.nextFloat();
            prom = prom + num;
            if (num < 1.6){
                promBajo = promBajo + num;
                NBajo++;
            }
        }
        System.out.println("El promedio de las N personas es " + prom/N);
        System.out.println("El promedio de las personas por con estatura menor a 1.60 es " + promBajo/NBajo);
    }

    //Realizar un programa que simule el funcionamiento de un dispositivo RS232, este tipo de
    //dispositivo lee cadenas enviadas por el usuario. Las cadenas deben llegar con un formato
    //fijo: tienen que ser de un máximo de 5 caracteres de largo, el primer carácter tiene que ser
    //X y el último tiene que ser una O.
    //Las secuencias leídas que respeten el formato se consideran correctas, la secuencia
    //especial “&&&&&” marca el final de los envíos (llamémosla FDE), y toda secuencia distinta
    //de FDE, que no respete el formato se considera incorrecta.
    //Al finalizar el proceso, se imprime un informe indicando la cantidad de lecturas correctas e
    //incorrectas recibidas. Para resolver el ejercicio deberá investigar cómo se utilizan las
    //siguientes funciones de Java Substring(), Length(), equals().
    static void dispRS232(){
        String cadena;
        Scanner leer = new Scanner(System.in);
        int correctas = 0;
        int incorrectas = 0;

        do {
            System.out.println("Ingrese la cadena:");
            cadena = leer.nextLine();
            if (cadena.length() == 5 && cadena.substring(0, 1).equals("X") && cadena.substring(4).equals("O")){
                correctas++;
            } else if(!cadena.equals("&&&&&")){
                incorrectas++;
            }
        } while (!cadena.equals("&&&&&"));

        System.out.println("Cadenas correctas: " + correctas);
        System.out.println("Cadenas incorrectas: " + incorrectas);
    }

    //Dibujar un cuadrado de N elementos por lado utilizando el carácter “*”. Por ejemplo, si el
    //cuadrado tiene 4 elementos por lado se deberá dibujar lo siguiente:
    //* * * *
    //*     *
    //*     *
    //* * * *
    static void dibujarCuadrado(){
        Scanner leer = new Scanner(System.in);
        System.out.println("Ingrese la dimensión del cuadrado");
        int N = leer.nextInt();

        for (int i = 0; i < N; i++){
            for (int j = 0; j < N; j++){
                if (i == 0 || i == N-1 || j == 0 || j == N-1){
                    System.out.print("X");
                } else {
                    System.out.print(" ");
                }
            }
            System.out.println();
        }
    }

    //Escriba un programa en el cual se ingrese un valor límite positivo, y a continuación solicite
    //números al usuario hasta que la suma de los números introducidos supere el límite inicial.
    static void limitePositivo(){
        Scanner leer = new Scanner(System.in);

        System.out.println("Ingrese el límite superior");
        int lim = leer.nextInt();
        int suma = 0;
        int num = 0;

        while (suma < lim){
            System.out.println("Ingrese un número");
            num = leer.nextInt();
            if (num > 0){
                suma = suma + num;
            }
        }
        System.out.println("La suma total es " + suma);
    }

    //Realizar un programa que pida dos números enteros positivos por teclado y muestre por
    //pantalla el siguiente menú:
    //      MENU
    //  1. Sumar
    //  2. Restar
    //  3. Multiplicar
    //  4. Dividir
    //  5. Salir
    //  Elija opción:
    //El usuario deberá elegir una opción y el programa deberá mostrar el resultado por pantalla
    //y luego volver al menú. El programa deberá ejecutarse hasta que se elija la opción 5.
    //Tener en cuenta que, si el usuario selecciona la opción 5, en vez de salir del programa
    //directamente, se debe mostrar el siguiente mensaje de confirmación: ¿Está seguro que
    //desea salir del programa (S/N)? Si el usuario selecciona el carácter ‘S’ se sale del
    //programa, caso contrario se vuelve a mostrar el menú.
    static void menuOperaciones(){
        Scanner leer = new Scanner(System.in);

        char opc;
        char exit = 'N';
        System.out.println("Ingrese el número 1");
        int num1 = leer.nextInt();
        System.out.println("Ingrese el número 2");
        int num2 = leer.nextInt();

        do {
            System.out.println("   MENÚ");
            System.out.println("1. Sumar");
            System.out.println("2. Restar");
            System.out.println("3. Multiplicar");
            System.out.println("4. Dividir");
            System.out.println("5. Salir");
            System.out.println("Elija opción:");
            opc = leer.next().charAt(0);
            switch (opc){
                case '1':
                    System.out.println("La suma es " + (num1 + num2));
                    break;
                case '2':
                    System.out.println("La resta es " + (num1 - num2));
                    break;
                case '3':
                    System.out.println("La multiplicación es " + (num1 * num2));
                    break;
                case '4':
                    System.out.println("La división es " + (num1 / num2));
                    break;
                case '5':
                    System.out.println("¿Está seguro que desea salir del programa (S/N)?");
                    exit = leer.next().charAt(0);
                    break;
            }
            System.out.println();
        } while (exit != 'S');
        System.out.println("Terminando ejecución");
    }

    //Realice un programa que calcule y visualice el valor máximo, el valor mínimo y el promedio
    //de n números (n>0). El valor de n se solicitará al principio del programa y los números
    //serán introducidos por el usuario. Realice dos versiones del programa, una usando el
    //bucle “while” y otra con el bucle “do - while”.
    static void calcNums(){

        int num;
        int max = 0;
        int min = 0;
        float suma = 0f;
        int cont = 0;

        System.out.println("Ingrese la cantidad 'n' de números");
        Scanner leer = new Scanner(System.in);
        int n = leer.nextInt();

        while (cont < n){
            cont++;
            System.out.println("Ingrese el número " + cont);
            num = leer.nextInt();
            if (cont == 1){
                max = num;
                min = num;
            }
            if (num > max){
                max = num;
            }
            if (num < min){
                min = num;
            }
            suma = suma + num;
        }
        System.out.println("El número máximo ingresado es: " + max);
        System.out.println("El número mínimo ingresado es: " + min);
        System.out.println("La media es: " + suma/n);
    }

    //Escriba un programa que lea números enteros. Si el número es múltiplo de cinco debe
    //detener la lectura y mostrar la cantidad de números leídos, la cantidad de números pares y
    //la cantidad de números impares. Al igual que en el ejercicio anterior los números
    //negativos no deben sumarse. Nota: recordar el uso de la sentencia break.
    static void divisor5(){
        Scanner leer = new Scanner(System.in);
        int num;
        int cont_par = 0;
        int cont_impar = 0;

        do {
            do {
                System.out.println("Ingrese el número " + (cont_par + cont_impar + 1) + "(Debe ser positivo)");
                num = leer.nextInt();
            } while (num < 0);
            if (num % 2 == 0){
                cont_par++;
            } else {
                cont_impar++;
            }
        } while ((num % 5) != 0);
        System.out.println("La cantidad de números pares es " + cont_par);
        System.out.println("La cantidad de números impares es " + cont_impar);
        System.out.println("La cantidad total de números es " + (cont_par + cont_impar));
    }

    //Simular la división usando solamente restas. Dados dos números enteros mayores que
    //uno, realizar un algoritmo que calcule el cociente y el residuo usando sólo restas. Método:
    //Restar el dividendo del divisor hasta obtener un resultado menor que el divisor, este
    //resultado es el residuo, y el número de restas realizadas es el cociente.
    //Por ejemplo: 50 / 13:
    //50 – 13 = 37 una resta realizada
    //37 – 13 = 24 dos restas realizadas
    //24 – 13 = 11 tres restas realizadas
    //dado que 11 es menor que 13, entonces: el residuo es 11 y el cociente es 3.
    //¿Aún no lo entendiste? Recomendamos googlear división con restas sucesivas.
    static void divisonRestasSucesivas(){
        Scanner leer = new Scanner(System.in);

        System.out.println("Ingrese el dividendo");
        int dividendo = leer.nextInt();
        System.out.println("Ingrese el divisor");
        int divisor = leer.nextInt();

        int cociente = 0;
        int residuo;

        do {
            cociente++;
            residuo = dividendo - cociente*divisor;
        } while ((residuo > divisor) && (divisor > 0));
        System.out.println("Cociente = " + cociente + " y residuo = " + residuo);
    }

    //Realice un programa para que el usuario adivine el resultado de una multiplicación entre
    //dos números generados aleatoriamente entre 0 y 10. El programa debe indicar al usuario
    //si su respuesta es o no correcta. En caso que la respuesta sea incorrecta se debe permitir
    //al usuario ingresar su respuesta nuevamente. Para realizar este ejercicio investigue como
    //utilizar la función Math.random() de Java.
    static void adivinarMult(){
        Scanner leer = new Scanner(System.in);
        int num1 = (int)(Math.random()*11); // rand(0, 10), se usa el 11 para incluir el 0 y el 10
        int num2 = (int)(Math.random()*11); // rand(0, 10), se usa el 11 para incluir el 0 y el 10
        int total = num1 * num2;
        int num;

        do {
            System.out.println("Ingrese el número");
            num = leer.nextInt();
            if (num < total) {
                System.out.println("El número ingresado es menor");
            } else if (num > total) {
                System.out.println("El número ingresado es mayor");
            }
        } while (num != total);
        System.out.println("Ha encontrado el número");
    }

    //Escribir un programa que lea un número entero y devuelva el número de dígitos que
    //componen ese número. Por ejemplo, si introducimos el número 12345, el programa
    //deberá devolver 5. Calcular la cantidad de dígitos matemáticamente utilizando el operador
    //de división. Nota: recordar que las variables de tipo entero truncan los números o
    //resultados.
    static void numDigitos(){
        int num = (int)(Math.random()*(1_000_000_000));
        int dig = 0;

        while (num != 0){
            dig++;
            num = num/10;
        }
        System.out.println("La cantidad de dígitos es " + dig);
    }

    //Necesitamos mostrar un contador con 3 dígitos (X-X-X), que muestre los números del 0-0-
    //0 al 9-9-9, con la particularidad que cada vez que aparezca un 3 lo sustituya por una E.
    //Ejemplo:
    //0-0-0
    //0-0-1
    //0-0-2
    //0-0-E
    //0-0-4
    //0-1-2
    //0-1-E
    //Nota: investigar función equals() y como convertir números a String.
    static void contadorE(){
//    String s;
//        for (int i = 0; i < 1000; i++){
//            s = String.valueOf(i);
//            s = s.replace("3","E");
//            System.out.println(s);
//        }

        String s1;
        String s2;
        String s3;
        String sf;

        for (int i = 0; i < 10; i++){
            s3 = String.valueOf(i);

            for (int j = 0; j < 10; j++) {
                s2 = String.valueOf(j);

                for (int k = 0; k < 10; k++) {
                    s1 = String.valueOf(k);

                    sf = s3 + "-" + s2 + "-" + s1;
                    sf = sf.replace("3","E");

                    System.out.println(sf);
                }
            }
        }
    }
}
