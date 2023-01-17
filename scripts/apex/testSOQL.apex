public static void testSOQLmethod1() {
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
            cont.accountid=acc1.Id;
        }else if (i<200) {
            cont.accountid=acc2.Id;
        }else if (i<300) {
            cont.accountid=acc3.Id;
            listcont.add(cont);
            System.debug('this is i===>' +i);
    }       
 }
}