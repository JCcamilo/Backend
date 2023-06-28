package Service;

import Entities.Cuenta;

import java.util.Scanner;

public class CuentaService {
    Scanner leer = new Scanner(System.in).useDelimiter("\n");

    public Cuenta crearCuenta() {

        System.out.println("Ingrese el número de cuenta");
        long numeroCuenta = leer.nextLong();

        System.out.println("Ingrese su DNI");
        int dni = leer.nextInt();

        System.out.println("Ingrese su saldo");
        double saldo = leer.nextDouble();

        return new Cuenta(numeroCuenta, dni, saldo);
    }
}
