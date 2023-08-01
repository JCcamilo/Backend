package Entities;

/*
Crea una clase DiscountCalculator que calcule el descuento aplicado a un producto.
Escribe pruebas unitarias para verificar que el cálculo del descuento se realiza correctamente
para diferentes escenarios (por ejemplo, descuento del 10%, descuento máximo, sin descuento, etc.).
*/

public class DiscountCalculator {

    private double initialValue;
    private double finalValue;
    private double discount;

    public DiscountCalculator() {
    }

    public DiscountCalculator(double initialValue, double finalValue) {
        this.initialValue = initialValue;
        this.finalValue = finalValue;
        if (initialValue > 0 && finalValue > 0)
            this.discount = (1 - finalValue / initialValue)*100;
    }

    public double CalculateDiscount(){
        return discount;
    }

}
