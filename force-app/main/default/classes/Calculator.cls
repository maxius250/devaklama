public class Calculator {
    public void welcomeMessage(){
        system.debug('Welcome to apex Calc!');
    }

    public void printNewWelcome(string msg){
        system.debug(msg+'....OK COOL!');
    }

    public string printAndReturnMessage(string msg){
        string returnString=msg+'.....OK cool.';
        return returnString;

    }

    public integer add(integer a, integer b){
        integer sum=a+b;
        return sum;
        
    }

    public integer add(integer x, integer y, integer z){
        integer sum=z+x+y;
        return sum;
}

}