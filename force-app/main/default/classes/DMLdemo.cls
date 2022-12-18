public  class DMLdemo {
    public static void dmlInsertDemo_strObj() {
        Account acc= new Account();
        acc.name='SogInnovas';
        System.debug('before '+ acc);
        insert acc;
        System.debug('after '+ acc);
    }
    public static void dmlInsert_cstObj() {
        Salesforce_project__c spnew= new Salesforce_project__c();
        spnew.project_name__c='Teach DML';
        spnew.description__c='evebody';

        insert spnew;
        
    }

    public static void DML_updateDemo1() {

        Account acc= new   Account();
        acc.name='Salesforce';
        insert  acc;
        System.debug(acc);
        acc.name='Salesforce Inc';

        update acc;
        System.debug(acc);

            
    }

    public static void DML_updateDemo2() {
        Account acc=[SELECT name from Account where  name='SoftInnovas' limit 1];
        acc.name='SoftInnovas11';
        update acc;
        System.debug('updated acc '+ acc);

        
    }
    public static void DML_insertDemo2() {
        Account acc=[SELECT name FROM Account where name='SoftInnovas11' limit 1];
        contact cnt=new contact();
        cnt.Lastname='Biden';
        cnt.AccountId=acc.id;
        insert cnt;
        
    }

    public static void DML_insertDemo3() {

        Salesforce_project__c  sp=[SELECT id, name from Salesforce_project__c order by CreatedDate desc Limit 1];

        Salesforce_ticket__C stnew= new Salesforce_ticket__C();
        stnew.Subject__C='Learn Apex DMLs';
        stnew.Priority__C='High';
        stnew.status__C='New';
        stnew.Requested_by_date__c=date.newinstance(2022, 12, 20);
        stnew.Salesforce_project__c=sp.id;
        insert stnew;
        System.debug('this is new st' +stnew);
        
    }

    public static void DML_insertDemo4() {
        List<account> ListAcc = new List<account>();

        account acc1=new account();
        acc1.name='bulk acc1';
        Listacc.add(acc1);

        account acc2=new account();
        acc2.name='bulk acc2';
        Listacc.add(acc2);

        account acc3=new account();
        acc3.name='bulk acc3';
        Listacc.add(acc3);

        insert ListAcc;

        
    }
    public static void DML_insertDemo5() {
        List<account> ListAccforloop = new List<account>();
        for (Integer i = 5; i < 0; i++) {
            account acc=new account();
            acc.name='Version '+i;
            ListAccforloop.add(acc);
        }

        if (!listaccforLoop.isempty()) {
            insert listaccforLoop;

        }

    }

    public static void DML_updatedemo5() {
        List<Account> listAcc = [SELECT id, name, active__c from Account];
        List<Account> updAcc = new List<Account>();

        for (Account acc: Listacc) {
            if (acc.name.contains('test')) {
                acc.name=acc.name+ ' via B.0';
                updAcc.add(acc);     
            }
              }

        if (!updAcc.isempty()) {
            update updAcc;
        
    }
}
public static void Changeactive() {
    List <Account> listPass=[SELECT name, id from Account where name like 'Version%' ];
    for (Account change : Listpass) {
        change.active__C='Yes';
    }
    update listPass;
}
}