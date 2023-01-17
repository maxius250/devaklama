@istest
public  class AccountTriggerHandlerTest {
    @istest
    private static void testUpdateDescription() {
        
        Account acc1= new Account();
        acc1.name='Acc name num1';
        acc1.Industry='Energy';
        acc1.Active__c='No';
       
        Account acc2= new Account();
        acc2.name='Acc name num2';
        acc2.Industry='Vabking';
        acc2.Active__c='Yes';
        
        Account acc3= new Account();
        acc3.name='Acc name num3';
        acc3.Industry='Energy';
        acc3.Active__c='No';

        List <Account> listacc=new list <Account>{acc1, acc2, acc3};
        insert listacc;

        List <Account> lissupdatedacc=[select id, name, description from Account where Active__c='Yes'];
        system.assertEquals('Account is active.Enjoy', lissupdatedacc[0].Description);
    
    for (Account eachacc : listacc) {
        eachacc.active__c='Yes';
    }
    update listacc;
    List <Account> updatedacc=[select id, name, description from Account where Active__c='Yes'];
        system.assertEquals('Account is active.Enjoy', lissupdatedacc[0].Description);
        system.assertEquals(3, updatedacc.size());
        
}
@istest
private static void testVipUpdate() {
    Account acc1= new Account();
    acc1.name='Acc name num1';
    acc1.Industry='Energy';
    acc1.Active__c='No';
   
    Account acc2= new Account();
    acc2.name='Acc name num2';
    acc2.Industry='Vabking';
    acc2.Active__c='Yes';
    
    Account acc3= new Account();
    acc3.name='Acc name num3';
    acc3.Industry='Energy';
    acc3.Active__c='No';

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
                listcont.size();

            }
          insert listcont;

          for (Account eachacc : Listacc) {
            eachacc.vip__c=true;    
          }
          update listacc;
          List <Contact> allcont=[select id, vip__c from Contact];
          system.assertEquals(true, allcont[0].vip__c);

          for (contact eachc : allcont) {
            system.assertEquals(true, eachc.vip__c);
          }
}
}