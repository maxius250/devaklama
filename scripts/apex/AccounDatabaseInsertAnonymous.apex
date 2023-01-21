Account acc1= new Account();
acc1.Name='SI test';
acc1.Industry='Energy';

Account acc2 = new Account();
acc2.Name='SF test';

Account acc12x = new Account();
Account acc12y = new Account();

List<Account> Listacc = new List<Account>{acc1, acc2, acc12x, acc12y};

List<Database.SaveResult> result= Database.insert(Listacc, false);

for (Database.SaveResult eachresult : result ) {
    if (eachresult.issuccess()) {
        system.debug('account succesfully created. Account id is----> '+ eachresult.getId());
    } else {
        System.debug('Errors are ----> '+ eachresult.getErrors());
    }
}