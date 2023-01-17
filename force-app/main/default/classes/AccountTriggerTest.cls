@istest
public  class AccountTriggerTest {
    @istest
    private static void testmethod1() {
        
    
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
        for (Account each : listacc) {
            each.Description='update';
        }
        
         update listacc;

          
            System.debug(listacc.size());
    }
}
