public class Calculator {
    public static void welcomeMessage(){
        system.debug('Welcome to apex Calc!');
    }

    public static void printNewWelcome(string msg){
        system.debug(msg+'....OK COOL!');
    }

    public static integer add(integer a,integer b) {
    integer sum=a+b;
    return sum;    
    }
    

    public static integer add2(integer x, integer y, integer z){
        integer sum2=z+x+y;
        return sum2;
}
}
