package Intro;

/*
Crear una clase llamada Operacion que tenga como atributos privados numero1 y
numero2. A continuación, se deben crear los siguientes métodos:
a) Método constructor con todos los atributos pasados por parámetro.
b) Metodo constructor sin los atributos pasados por parámetro.
c) Métodos get y set.
d) Método para crearOperacion(): que le pide al usuario los dos números y los guarda
en los atributos del objeto.
e) Método sumar(): calcular la suma de los números y devolver el resultado al main.
f) Método restar(): calcular la resta de los números y devolver el resultado al main
g) Método multiplicar(): primero valida que no se haga una multiplicación por cero, si
fuera a multiplicar por cero, el método devuelve 0 y se le informa al usuario el error.
Si no, se hace la multiplicación y se devuelve el resultado al main
h) Método dividir(): primero valida que no se haga una división por cero, si fuera a pasar
una división por cero, el método devuelve 0 y se le informa al usuario el error se le
informa al usuario. Si no, se hace la división y se devuelve el resultado al main.
*/
public class Operacion {
    private double num1;
    private double num2;

    public Operacion() {
    }

    public Operacion(double num1, double num2) {
        this.num1 = num1;
        this.num2 = num2;
    }

    public double getNum1() {
        return num1;
    }

    public void setNum1(double num1) {
        this.num1 = num1;
    }

    public double getNum2() {
        return num2;
    }

    public void setNum2(double num2) {
        this.num2 = num2;
    }

    public double sumar(){
        return num1 + num2;
    }
    public double restar(){
        return num1 - num2;
    }

    public double multiplicar() {
        if (num1 == 0 || num2 == 0) {
            System.out.println("Se está multiplicando por 0");
            return 0;
        } else
            return num1 * num2;
    }
    public double dividir() {
        if (num2 == 0) {
            System.out.println("No se puede dividir entre 0");
            return 0;
        } else
            return num1 / num2;
    }
}

/*
    OperacionService ops = new OperacionService();

    Operacion op = ops.crearOperacion();

    System.out.println(op.sumar());
    System.out.println(op.restar());
    System.out.println(op.multiplicar());
    System.out.println(op.dividir());
*/