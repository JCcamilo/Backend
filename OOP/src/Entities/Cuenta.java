package Entities;

/*
Realizar una clase llamada Cuenta (bancaria) que debe tener como mínimo los atributos:
numeroCuenta (entero), el DNI del cliente (entero largo) y el saldo actual (entero).
Las operaciones asociadas a dicha clase son:
a) Constructor por defecto y constructor con DNI, saldo, número de cuenta e interés.
b) Agregar los métodos getters y setters correspondientes
c) Metodo para crear un objeto Cuenta, pidiéndole los datos al usuario.
d) Método ingresar(double ingreso): el método recibe una cantidad de dinero a ingresar
y se la sumara a saldo actual.
e) Método retirar(double retiro): el método recibe una cantidad de dinero a retirar y se
la restará al saldo actual. Si la cuenta no tiene la cantidad de dinero a retirar, se
pondrá el saldo actual en 0.
f) Método extraccionRapida(): le permitirá sacar solo un 20% de su saldo. Validar que el
usuario no saque más del 20%.
g) Método consultarSaldo(): permitirá consultar el saldo disponible en la cuenta.
h) Método consultarDatos(): permitirá mostrar todos los datos de la cuenta
*/
public class Cuenta {

    private long numeroCuenta;
    private int dni;
    private double saldo;
    private int interes;

    public Cuenta() {
    }

    public Cuenta(long numeroCuenta, int dni, double saldo) {
        this.numeroCuenta = numeroCuenta;
        this.dni = dni;
        this.saldo = saldo;
    }

    public Cuenta(long numeroCuenta, int dni, int saldo, int interes) {
        this.numeroCuenta = numeroCuenta;
        this.dni = dni;
        this.saldo = saldo;
        this.interes = interes;
    }

    public void ingresar(double ingreso) {
        saldo += ingreso;
    }
    public void retirar(double retiro) {
        if (retiro < saldo)
            saldo -= retiro;
        else
            System.out.println("No se puede realizar el retiro solicitado, su saldo es " + saldo);
    }

    public void extraccionRapida() {
        if (saldo > 0)
            saldo *= 0.8;
    }

    public void consultarSaldo() {
        System.out.println("Su saldo actual es " + saldo);
    }
    public void consultarDatos() {
        System.out.println("Su número de cuenta es " + numeroCuenta);
        System.out.println("Su DNI es " + dni);
        System.out.println("Su saldo actual es " + saldo);
        if (interes != 0)
            System.out.println("Su tasa de interés actual es " + interes);
    }

    @Override
    public String toString() {
        return "Cuenta{" +
                "numeroCuenta=" + numeroCuenta +
                ", dni=" + dni +
                ", saldo=" + saldo +
                ", interes=" + interes +
                '}';
    }
}

/*
        Cuenta jc = new Cuenta(860_721_284_53L, 1_053_851_076, 100, 0);

        jc.ingresar(2400);
        jc.retirar(1430);
        jc.extraccionRapida();
        jc.consultarSaldo();
        jc.consultarDatos();

        System.out.println("\n" + jc);

        CuentaService cs = new CuentaService();

        Cuenta lz = cs.crearCuenta();

        System.out.println("\n" + lz);
*/