package Entities;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class DiscountCalculatorTest {

    @Test
    void VerifyCalculatedDiscount() {
        assertEquals(90, new DiscountCalculator(100,10).CalculateDiscount(),0);
        assertEquals(95, new DiscountCalculator(200,10).CalculateDiscount(),0);
        assertEquals(98, new DiscountCalculator(500,10).CalculateDiscount(),0);
    }
}