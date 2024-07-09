@isTest
private class TemperatureConverterTest {

    @isTest
    static void testCelsiusToFahrenheit() {
        // Test with a known value
        Decimal celsius = 0;
        Decimal expectedFahrenheit = 32;
        Decimal actualFahrenheit = TemperatureConverter.celsiusToFahrenheit(celsius);
        System.assertEquals(expectedFahrenheit, actualFahrenheit, '0°C should be 32°F');

        // Test with another value
        celsius = 100;
        expectedFahrenheit = 212;
        actualFahrenheit = TemperatureConverter.celsiusToFahrenheit(celsius);
        System.assertEquals(expectedFahrenheit, actualFahrenheit, '100°C should be 212°F');
    }

    @isTest
    static void testFahrenheitToCelsius() {
        // Test with a known value
        Decimal fahrenheit = 32;
        Decimal expectedCelsius = 0;
        Decimal actualCelsius = TemperatureConverter.fahrenheitToCelsius(fahrenheit);
        System.assertEquals(expectedCelsius, actualCelsius, '32°F should be 0°C');

        // Test with another value
        fahrenheit = 212;
        expectedCelsius = 100;
        actualCelsius = TemperatureConverter.fahrenheitToCelsius(fahrenheit);
        System.assertEquals(expectedCelsius, actualCelsius, '212°F should be 100°C');
    }

    @isTest
    static void testCelsiusToFahrenheitWithNull() {
        // Test with null value (should throw an exception)
        try {
            TemperatureConverter.celsiusToFahrenheit(null);
            System.assert(false, 'Expected exception for null Celsius value');
        } catch (IllegalArgumentException e) {
            System.assertEquals('Celsius value cannot be null', e.getMessage());
        }
    }

    @isTest
    static void testFahrenheitToCelsiusWithNull() {
        // Test with null value (should throw an exception)
        try {
            TemperatureConverter.fahrenheitToCelsius(null);
            System.assert(false, 'Expected exception for null Fahrenheit value');
        } catch (IllegalArgumentException e) {
            System.assertEquals('Fahrenheit value cannot be null', e.getMessage());
        }
    }
}
//This is check for the test class to run 
//added the changesf
//9-7-2024 july 25
//kk