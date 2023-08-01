package Entities;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class TemperatureConverterTest {

    @Test
    void VerifyConvertUnits() {

        double[] expectedC = {-40, -40+273.15, -40};
        double[] expectedK = {0, 273.15, 32};
        double[] expectedF = {-40, -40+273.15, -40};

        assertArrayEquals(expectedC, new TemperatureConverter(-40, 'C').ConvertUnits(),0);
        assertArrayEquals(expectedK, new TemperatureConverter(273.15, 'K').ConvertUnits(),0);
        assertArrayEquals(expectedF, new TemperatureConverter(-40, 'F').ConvertUnits(),0);
    }
}