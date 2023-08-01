package Entities;

/*
Crea una clase TemperatureConverter que convierta entre diferentes unidades de temperatura
(por ejemplo, Celsius, Fahrenheit, Kelvin).
Escribe pruebas unitarias para asegurarte de que la conversión entre las diferentes unidades
se realiza correctamente y produce los resultados esperados.
*/

public class TemperatureConverter {

    private double temp; // Temperature depending on units
    private char unit; // ['C', 'F', 'K']

    public TemperatureConverter(double temp, char unit) {
        this.temp = temp;
        this.unit = unit;
    }
    public TemperatureConverter() {
    }

    public double getTemp() {
        return temp;
    }

    public void setTemp(double temp) {
        this.temp = temp;
    }

    public char getUnit() {
        return unit;
    }

    public void setUnit(char unit) {
        this.unit = unit;
    }

    public double[] ConvertUnits(){
        double[] tempArr = new double[3];
        switch (unit){
            case 'C':
                tempArr[0] = this.temp;
                tempArr[1] = this.temp + 273.15;
                tempArr[2] = this.temp*9/5 + 32;
                break;
            case 'K':
                tempArr[0] = temp - 273.15;
                tempArr[1] = temp;
                tempArr[2] = tempArr[0]*9/5 + 32;
                break;
            case 'F':
                tempArr[0] = (temp - 32)*5/9;
                tempArr[1] = tempArr[0] + 273.15;
                tempArr[2] = temp;
                break;
        }
        return tempArr;
    }

}
