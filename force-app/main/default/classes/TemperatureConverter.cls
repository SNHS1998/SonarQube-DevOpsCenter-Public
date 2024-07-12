public with sharing class TemperatureConverter {

    // Convert Celsius to Fahrenheit
    public static Decimal celsiusToFahrenheit(Decimal celsius) {
        if (celsius == null) {
            throw new IllegalArgumentException('Celsius value cannot be null');
        }
        return (celsius * 9 / 5) + 32;
    }

    // Convert Fahrenheit to Celsius
    public static Decimal fahrenheitToCelsius(Decimal fahrenheit) {
        if (fahrenheit == null) {
            throw new IllegalArgumentException('Fahrenheit value cannot be null');
        }
        return (fahrenheit - 32) * 5 / 9;
    }
}
// This is to check the test class trigger
//added the cha   xsffghf
//9/7/2024 J
//kjhfsdsggdvhghvcgjxg
//klijlkjddyrfzfsfsfssASFszfszgddvx