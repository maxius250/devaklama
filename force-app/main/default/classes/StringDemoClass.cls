public class StringDemoClass {
    public void stringMethod1() {
        string SessionDescription= 'learning string methods in apex language!';
        system.debug(SessionDescription); 
        integer lenghtofstr= SessionDescription.length();

        system.debug('lenght of this string is '+ lenghtofstr);

        string inCapital=SessionDescription.touppercase();
        system.debug(inCapital);

        boolean apexexists= SessionDescription.contains('apex');
        system.debug('contains apex???? '+apexexists);
        boolean salesforceexists= SessionDescription.contains('salesforce');
        system.debug('contains salesforce???? '+salesforceexists);

    
    }
}
