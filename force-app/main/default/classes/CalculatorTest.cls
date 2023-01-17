@istest
public class CalculatorTest {
    @istest
    public static void testmessage() {
        Calculator.welcomeMessage();
        Calculator.printNewWelcome('this is from test class');
    }
    @istest
    private static void testcalc2() {
        integer a=5;
        integer b=3;
        integer sumtest=calculator.add(a,b);
        System.assertEquals(8, sumtest);
    }

    @istest
    private static void testcalc3() {
        integer a=5;
        integer b=3;
        integer c=4;
        integer sumtest=calculator.add2(a,b,c);
        System.assertEquals(12, sumtest);
    }
}
