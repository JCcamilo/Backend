package Entities;

import java.util.Arrays;

/*
Realizar una clase llamada Cadena que tenga como atributos una frase (de tipo de
String) y su longitud. En el main se creará el objeto y se le pedirá al usuario que ingrese
una frase que puede ser una palabra o varias palabras separadas por un espacio en
blanco y a través de los métodos set, se guardará la frase y la longitud de manera
automática según la longitud de la frase ingresada. Deberá además implementar los
siguientes métodos:

a) Método mostrarVocales(), deberá contabilizar la cantidad de vocales que tiene la
frase ingresada.
b) Método invertirFrase(), deberá invertir la frase ingresada y mostrarla por pantalla. Por
ejemplo: Entrada: "casa blanca", Salida: "acnalb asac".
c) Método vecesRepetido(String letra), recibirá un carácter ingresado por el usuario y
contabilizar cuántas veces se repite el carácter en la frase, por ejemplo:
d) Entrada: frase = "casa blanca". Salida: El carácter 'a' se repite 4 veces.
e) Método compararLongitud(String frase), deberá comparar la longitud de la frase que
compone la clase con otra nueva frase ingresada por el usuario.
f) Método unirFrases(String frase), deberá unir la frase contenida en la clase Cadena
con una nueva frase ingresada por el usuario y mostrar la frase resultante.
g) Método reemplazar(String letra), deberá reemplazar todas las letras “a” que se
encuentren en la frase, por algún otro carácter seleccionado por el usuario y mostrar
la frase resultante.
h) Método contiene(String letra), deberá comprobar si la frase contiene una letra que
ingresa el usuario y devuelve verdadero si la contiene y falso si no.
*/

public class Cadena {

    private String phrase;
    private int length;

    public Cadena() {
    }

    public Cadena(String phrase) {
        this.phrase = phrase;
        length = phrase.length();
    }

    public String getPhrase() {
        return phrase;
    }

    public void setPhrase(String phrase) {
        this.phrase = phrase;
        length = phrase.length();
    }

    public int getLength() {
        return length;
    }

    /**
     * Muestra la cantidad de vocales que tiene la frase
     */
    public void mostrarVocales() {
        //equalsIgnoreCase(String str)

        int[] vowels = new int[5];
        Arrays.fill(vowels, 0);

        for (int i = 0; i < phrase.length(); i++) {
            switch (phrase.toLowerCase().charAt(i)){
                case 'a':
                    vowels[0] += 1;
                    break;
                case 'e':
                    vowels[1] += 1;
                    break;
                case 'i':
                    vowels[2] += 1;
                    break;
                case 'o':
                    vowels[3] += 1;
                    break;
                case 'u':
                    vowels[4] += 1;
                    break;
            }
        }
        System.out.println("a: " + vowels[0] + " e: " + vowels[1] + " i: " + vowels[2] + " o: " + vowels[3] + " u: " + vowels[4]);
    }

    /**
     * Invierte la frase
     */
    public void invertirFrase(){
        for (int i = phrase.length()-1; i >= 0; i--) {
            System.out.print(phrase.charAt(i));
        }
    }

    /**
     * Cuenta la cantidad de veces que se repite un carácter
     * @param letter Carácter que se busca en la frase
     */
    public void vecesRepetido(char letter) {

        int count = 0;

        for (int i = 0; i < phrase.length(); i++) {
            count += (phrase.charAt(i) == letter) ? 1 : 0;
        }

        System.out.println("El carácter '" + letter + "' se repite " + count + " veces");
    }
}
