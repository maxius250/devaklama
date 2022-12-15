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


}
