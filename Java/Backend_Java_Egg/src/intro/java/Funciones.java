package intro.java;

import java.util.Scanner;
import java.util.Arrays;

public class Funciones {

    public static void main(String[] args){
//        int[][] matriz = new int[10][5];
//        llenarMatriz(matriz, 10);
//        int[][] matriz = { // Anti simétrica
//                          {0,-2,4},
//                          {2,0,2},
//                          {-4,-2,0}
//        };
//        int[][] matriz = { // Cuadrado mágico
//                          {2,7,6},
//                          {9,5,1},
//                          {4,3,8}
//        };
//        int[] vector = new int[20];

//        System.out.println(codificarCadena("MURCIELAGO murcielago"));
//        System.out.println(conversionMoneda(1000, "Yen"));
//        llenarVectorInv();
//        llenarMatriz(matriz, 12000);
//        contarDig(vector);
//        transpuesta(matriz);
//        System.out.println("Es " + antiSimetrica(matriz) + " que la matriz es anti simétrica");
//        System.out.println(esPrimo());
//        cuadradoMagico(matriz);
//        notasCurso(matriz);
//        encontrarMatrizInterna();
        sopaLetras();
//        fibonacci();
    }

    /*
    Escribir un programa que procese una secuencia de caracteres ingresada por teclado y terminada
    en punto, y luego codifique la palabra o frase ingresada de la siguiente manera: cada vocal se
    reemplaza por el carácter que se indica en la tabla y el resto de los caracteres (incluyendo a las
    vocales acentuadas) se mantienen sin cambios.
        a e i o u
        @ # $ % *
    Realice un subprograma que reciba una secuencia de caracteres y retorne la codificación
    correspondiente. Utilice la estructura “según” para la transformación.
    Por ejemplo, si el usuario ingresa: Ayer, lunes, salimos a las once y 10.
    La salida del programa debería ser: @y#r, l*n#s, s@l$m%s @ l@s %nc# y 10.
    */
    static String codificarCadena(String input){
        String sCod = input.replace("A", "@").replace("a", "@");
        sCod = sCod.replace("E", "#").replace("e", "#");
        sCod = sCod.replace("I", "$").replace("i", "$");
        sCod = sCod.replace("O", "%").replace("o", "%");
        sCod = sCod.replace("U", "*").replace("u", "*");
        return sCod;
    }

    /*
    Crea una aplicación que a través de una función nos convierta una cantidad de euros
    introducida por teclado a otra moneda, estas pueden ser a dólares, yenes o libras. La
    función tendrá como parámetros, la cantidad de euros y la moneda a converir que será
    una cadena, este no devolverá ningún valor y mostrará un mensaje indicando el cambio
    (void).
    El cambio de divisas es:
    * 0.86 libras es un 1 €
    * 1.28611 $ es un 1 €
    * 129.852 yenes es un 1 €
    */
    static double conversionMoneda(double valor, String moneda){

        double resultado = 0;

        switch (moneda){
            case "Dolar":
                resultado = valor*1.28611;
                break;
            case "Libra":
                resultado = valor*0.86;
                break;
            case "Yen":
                resultado = valor*129.852;
                break;
            default:
                System.out.println("Ingrese una moneda valida (Dolar, Libra, Yen)");
        }
        return resultado;
    }

    /*
    Realizar un algoritmo que rellene un vector con los 100 primeros números enteros y los
    muestre por pantalla en orden descendente.
    */
    static void llenarVectorInv(){

        int[] vector = new int[100];

        for (int i = 0; i < 100 ; i++){
            vector[i] = 100-i;
            System.out.println(vector[i]);
        }
    }

    /*
    TIP: Para imprimir la matriz y que quede linda y con formato pueden hacer:
    System.out.printf("[%02d] ", matriz[i][j]);
    */
    static void llenarMatriz(int[][] matriz, int limSup){

        for (int i = 0; i < matriz.length; i++){
            for (int j = 0; j < matriz[0].length; j++){
                matriz[i][j] = (int)(Math.random()*(limSup+1));
            }
        }
        escribirMatriz(matriz);
    }

    static void escribirMatriz(int[][] matriz){

        System.out.println("\nSu matriz es: ");

        for (int[] filas : matriz){
            for (int elemento : filas){
                System.out.printf("[%5d] ", elemento);
            }
            System.out.println();
        }
    }

    static void llenarVector(int[] vector, int limSup){

        for (int i = 0; i < vector.length; i++){
            vector[i] = (int)(Math.random()*(limSup+1));
            System.out.printf("[%5d] ", vector[i]);
        }
        System.out.println();
    }

    static void escribirVector(int[] vector){

        for (int i = 0; i < vector.length; i++){
            System.out.printf("[%5d]", (vector[i]));
        }
        System.out.println();
    }

    /*
    Recorrer un vector de N enteros contabilizando cuántos números son de 1 dígito, cuántos
    de 2 dígitos, etcétera (hasta 5 dígitos).
    */
    static int[] contarDig(int[] vector){

        llenarVector(vector, 10000);

        int[] digs = new int[5];
        int aux;
        int count;

        for (int elemento : vector){
            aux = elemento;
            count = 0;
            while (aux != 0){
                aux *= 0.1;
                count++;
            }
            switch (count-1){
                case 0:
                    digs[0]++;
                    break;
                case 1:
                    digs[1]++;
                    break;
                case 2:
                    digs[2]++;
                    break;
                case 3:
                    digs[3]++;
                    break;
                case 4:
                    digs[4]++;
                    break;
            }
        }
        escribirVector(digs);
        return digs;
    }

    /*
    Realizar un programa que rellene un matriz de 4 x 4 de valores aleatorios y muestre la
    traspuesta de la matriz. La matriz traspuesta de una matriz A se denota por B y se obtiene
    cambiando sus filas por columnas (o viceversa).
    */
    static int[][] transpuesta(int[][] matriz){

        int[][] transp = new int[matriz[0].length][matriz.length];

        for (int i = 0; i < matriz.length; i++){
            for (int j = 0; j < matriz[0].length; j++) {
                transp[j][i] = matriz[i][j];
            }
        }
        escribirMatriz(transp);
        return transp;
    }

    /*
    Realice un programa que compruebe si una matriz dada es anti simétrica. Se dice que una
    matriz A es anti simétrica cuando ésta es igual a su propia traspuesta, pero cambiada de
    signo. Es decir, A es anti simétrica si A = -AT. La matriz traspuesta de una matriz A se
    denota por AT y se obtiene cambiando sus filas por columnas (o viceversa).
    */
    static boolean antiSimetrica(int[][] matriz){

        for (int i = 0; i < matriz.length; i++){
            if (matriz[i][i] != 0){
                return false;
            } else {
                for (int j = i+1; j < matriz[0].length; j++){
                    if (matriz[i][j] != -matriz[j][i]){
                        return false;
                    }
                }
            }
        }
        return true;
    }

    /*
    Crea una aplicación que nos pida un número por teclado y con una función se lo pasamos
    por parámetro para que nos indique si es o no un número primo, debe devolver true si es
    primo, sino false.
    Un número primo es aquel solo puede dividirse entre 1 y si mismo. Por ejemplo: 25 no es
    primo, ya que 25 es divisible entre 5, sin embargo, 17 si es primo.

    Básicamente, un número primo es un número natural que tiene solo dos divisores o
    factores: 1 y el mismo número. Es decir, es primo aquel número que se puede dividir por
    uno y por el mismo número.
    El primer número primo es 2, y hay 25 números primos entre 1 y 100, ellos son: 2, 3, 5, 7, 11,
    13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89 y 97.
    */
    static boolean esPrimo(){

        Scanner leer = new Scanner(System.in);
        System.out.println("Ingrese un número entero");
        int num = leer.nextInt();
        int div;

        if (num == 1 || num == 2 || num == 3 || num == 5 || num == 7) return true;

        else if (num % 2 == 0 || num % 3 == 0 || num % 5 == 0 || num % 7 == 0) return false;

        else {
            for (int i = 11; i < num; i = i+2){
                if (num % i == 0){
                    System.out.println("El número " + num + " es divisible entre " + i);
                    return false;
                }
            }
        }
        return true;
    }

    /*
    Un cuadrado mágico 3 x 3 es una matriz 3 x 3 formada por números del 1 al 9 donde la
    suma de sus filas, sus columnas y sus diagonales son idénticas. Crear un programa que
    permita introducir un cuadrado por teclado y determine si este cuadrado es mágico o no.
    El programa deberá comprobar que los números introducidos son correctos, es decir,
    están entre el 1 y el 9.
    */
    static void cuadradoMagico(int[][] matriz){
        int diag = 0;
        int invDiag = 0;
        int col = 0;
        int row = 0;

        for (int i = 0; i < matriz.length; i++){
            diag += matriz[i][i];
            invDiag += matriz[i][matriz.length-i-1];
            col = 0;
            row = 0;
            for (int j = 0; j < matriz.length; j++){
                col += matriz[j][i];
                row += matriz[i][j];
            }
            if (col != row){
                System.out.println("La matriz no es un cuadrado mágico");
                return;
            }
        }

        if (diag == invDiag && col == diag){
            System.out.println("La matriz es un cuadrado mágico con suma " + diag);
        } else System.out.println("La matriz no es un cuadrado mágico");
    }

    /*
    Los profesores del curso de programación de Egg necesitan llevar un registro de las notas
    adquiridas por sus 10 alumnos para luego obtener una cantidad de aprobados y
    desaprobados. Durante el periodo de cursado cada alumno obtiene 4 notas, 2 por trabajos
    prácticos evaluativos y 2 por parciales. Las ponderaciones de cada nota son:
        Primer trabajo práctico evaluativo 10%
        Segundo trabajo práctico evaluativo 15%
        Primer Integrador 25%
        Segundo integrador 50%
    Una vez cargadas las notas, se calcula el promedio y se guarda en el arreglo. Al final del
    programa los profesores necesitan obtener por pantalla la cantidad de aprobados y
    desaprobados, teniendo en cuenta que solo aprueban los alumnos con promedio mayor o
    igual al 7 de sus notas del curso.
    */
    static void notasCurso(int[][] matriz){

        float[] total = new float[matriz.length];

        for (int i = 0; i < matriz.length; i++){
            total[i] = 0;
            total[i] = matriz[i][0]*0.1f + matriz[i][1]*0.15f + matriz[i][2]*0.25f + matriz[i][3]*0.5f;
            System.out.printf("\n [%2.3f]", total[i]);
        }
    }

    /*
    Dadas dos matrices cuadradas de números enteros, la matriz M de 10x10 y la matriz P de
    3x3, se solicita escribir un programa en el cual se compruebe si la matriz P está contenida
    dentro de la matriz M. Para ello se debe verificar si entre todas las submatrices de 3x3 que
    se pueden formar en la matriz M, desplazándose por filas o columnas, existe al menos una
    que coincida con la matriz P. En ese caso, el programa debe indicar la fila y la columna de
    la matriz M en la cual empieza el primer elemento de la submatriz P.
    */
    public static void encontrarMatrizInterna(){

        int fil=0,col=0;

        int[][] M = {
                {1, 2, 3, 4, 5, 6, 7, 8, 9, 0},
                {4, 5, 6, 7, 8, 4, 0, 1, 2, 3},
                {7, 8, 9, 0, 1, 2, 3, 4, 5, 6},
                {0, 1, 2, 3, 4, 5, 6, 7, 8, 9},
                {3, 4, 5, 6, 7, 8, 9, 0, 1, 2},
                {6, 7, 8, 4, 0, 1, 2, 3, 4, 5},
                {9, 0, 1, 2, 3, 4, 8, 5, 6, 7},
                {2, 3, 4, 5, 6, 7, 1, 8, 4, 0},
                {5, 6, 7, 8, 9, 0, 4, 1, 2, 3},
                {8, 9, 0, 1, 2, 3, 4, 5, 6, 7}
        };
        int[][] P= {
                {5, 6, 7},
                {8, 4, 0},
                {1, 2, 3}
        };

        for (int i = 0; i <= M.length - P.length; i++){
            for (int j = 0; j <= M.length - P.length; j++){
                if (M[i][j] == P[0][0]){
                    fil = i;
                    col = j;

                    searchInnerMatrix:
                    for (int k = 0; k < P.length; k++){
                        for (int l = 0; l < P.length ; l++){
                            if (M[i+k][j+l] != P[k][l]){
                                break searchInnerMatrix;
                            }
                            if(k == P.length-1 && l == P.length-1){
                                System.out.println("La matriz p esta contenida en la matriz m a partir de las coordenadas: ");
                                System.out.println("fila: " + fil + " ,col: " + col);
                            }
                        }
                    }
                }
            }
        }
    }

    /*
    Construya un programa que lea 5 palabras de mínimo 3 y hasta 5 caracteres y, a medida
    que el usuario las va ingresando, construya una “sopa de letras para niños” de tamaño de
    20 x 20 caracteres. Las palabras se ubicarán todas en orden horizontal en una fila que
    será seleccionada de manera aleatoria. Una vez concluida la ubicación de las palabras,
    rellene los espacios no utilizados con un número aleatorio del 0 al 9. Finalmente imprima
    por pantalla la sopa de letras creada.
    Nota: Para resolver el ejercicio deberá investigar cómo se utilizan las siguientes funciones
    de Java substring(), Length() y Math.random().
    */
    static void sopaLetras(){

        /// Se declaran e inicializan variables
        char[][] sopa = new char[20][20];
        int movX, movY;
        int startX, startY;
        int endX, endY;
        int coordX, coordY;

        /// Se llena la matriz de caracteres con espacios en blanco ' '
        for (char[] fila : sopa){
            Arrays.fill(fila, ' ');
        }
        //        String[] palabras = new String[5];

        /// Se definen las palabras de la sopa de letras y las letras de relleno
        String[] palabras = {"zapato", "cartera", "reloj", "ejercicio", "salvaje"};
        char[] letras = {'A','B','C','D','E','F','G','H','I','J','K','L',
                'M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'};

//        Scanner leer = new Scanner(System.in);
//        for (int i = 0; i < 5; i++){
//            System.out.println("Ingrese la palabra No. " + (i+1));
//            palabras[i] = leer.nextLine();
//        }

        /// Se asignan las palabras a la sopa de letras
        for (String palabra : palabras) {
            movX = 0;
            movY = 0;
            int way = (int)(Math.random() * 3); // Sentido de la palabra (horizontal, vertical ó diagonal)
            int direction = (int)Math.pow(-1, (int)((Math.random() * 2))); // Dirección de la palabra (al positivo ó al negativo)

            switch (way) {
                case 0: // Se desplaza solo horizontalmente
                    movX = 1;
                    break;
                case 1: // Se desplaza solo verticalmente
                    movY = 1;
                    break;
                case 2: // Se desplaza en forma diagonal
                    movX = 1;
                    movY = 1;
                    break;
            }

            /// Se validan que las posiciones estén dentro de los límites
            do {
                startX = (int)(Math.random() * sopa.length);
                startY = (int)(Math.random() * sopa.length);
                endX = startX + (movX * direction * palabra.length());
                endY = startY + (movY * direction * palabra.length());
            } while (endX < 0 || endX >= sopa.length || endY < 0 || endY >= sopa.length);

            /// Se agrega la palabra correspondiente a la sopa de letras
            for (int k = 0; k < palabra.length(); k++) {
                coordX = startX + (movX * direction * k);
                coordY = startY + (movY * direction * k);
                sopa[coordX][coordY] = palabra.charAt(k);
            }
        }

        /// Se rellenan los espacios en blanco con letras aleatorias
        for (int i = 0; i < sopa.length; i++){
            for (int j = 0; j < sopa.length; j++){
                if (sopa[i][j] == ' ')
                    sopa[i][j] = letras[(int)(Math.random() * letras.length)];
            }
        }

        /// Se muestra por pantalla la sopa de letras
        System.out.println("La sopa de letras es");
        for (int i = 0; i < sopa.length; i++) {
            System.out.print("|");
            for (int j = 0; j < sopa.length; j++)
                System.out.print(sopa[i][j] + "|");
            System.out.println();
        }
    }

    /*
    Realizar un programa que complete un vector con los N primeros números de la sucesión
    de Fibonacci. Recordar que la sucesión de Fibonacci es la sucesión de los siguientes
    números:
    1, 1, 2, 3, 5, 8, 13, 21, 34, ...
    Donde cada uno de los números se calcula sumando los dos anteriores a él. Por ejemplo:
    La sucesión del número 2 se calcula sumando (1+1)
    Análogamente, la sucesión del número 3 es (1+2),
    Y la del 5 es (2+3),
    Y así sucesivamente...
    La sucesión de Fibonacci se puede formalizar de acuerdo a la siguiente fórmula:
    Fibonaccin = Fibonaccin-1 + Fibonaccin-2 para todo n>1
    Fibonaccin = 1 para todo n<=1
    Por lo tanto, si queremos calcular el término “n” debemos escribir una función que reciba
    como parámetro el valor de “n” y que calcule la serie hasta llegar a ese valor.
    Para conocer más acerca de la serie de Fibonacci consultar el siguiente link:
    https://quantdare.com/numeros-de-fibonacci/
    */
    static void fibonacci(){
        int N = 15;
        int[] sucesion = new int[N];

        for (int i = 0; i < N; i++){
            if (i <= 1)
                sucesion[i] = 1;
            else
                sucesion[i] = sucesion[i-2] + sucesion[i-1];
            System.out.printf("[ %1d ]", sucesion[i]);
        }

        System.out.println();
        int n1, n2, n;
        n1 = 0;
        n2 = 0;
        n = 0;

        for (int i = 0; i < N; i++){
            switch (i) {
                case 0:
                    n2 = 1;
                    n1 = 0;
                    break;
                case 1:
                    n2 = 0;
                    n1 = 1;
                    break;
                default:
                    n2 = n1;
                    n1 = n;
                    break;
            }
            n = n1 + n2;
            System.out.printf("[ %1d ]", n);
        }
    }
}
