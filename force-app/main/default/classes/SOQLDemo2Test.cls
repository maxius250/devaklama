@istest
public class SOQLDemo2Test {
    @TestSetup
    static void makeData(){
        Account acc1= new Account();
        acc1.name='Acc name num1';
        acc1.Industry='Energy';
        Account acc2= new Account();

        acc2.name='Acc name num2';
        acc2.Industry='Vabking';
        
        Account acc3= new Account();
        acc3.name='Acc name num3';
        acc3.Industry='Energy';
        List <Account> listacc=new list <Account>{acc1, acc2, acc3};
        
        insert listacc;
        List<Contact> listcont= new list <Contact>();

        
        for (Integer i = 0; i < 301; i++) {
            Contact cont= new Contact();
            cont.lastname='Test SOQL';
            if (i<100) {
                cont.accountid=acc1.id;
            } else if (i>200) {
                cont.accountid=acc2.id;
            } else {
                cont.accountid=acc3.id;
            }
                listcont.add(cont);

            }
          insert listcont;
          System.debug(listcont.size());
    }


    
    @istest
    private static void testSOQLmethod1() {
        test.startTest();
        SOQLDemo2.childToParent_SOQL();
       test.stopTest();
}
}