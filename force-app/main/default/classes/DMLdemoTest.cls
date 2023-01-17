@istest
public class DMLdemoTest {
    @istest
    private static void DMLdemoInsertTest() {
        DMLdemo.dmlInsertDemo_strObj();
        List<Account> lictacc=[SELECT id, name from Account where name='SogInnovas'];
        system.assertEquals('SogInnovas', lictacc[0].name);
        system.assertEquals(1, lictacc.size());
    }
    @istest
    private static void DmlDemo4Test() {
        Account acc= new Account();
        acc.name='SoftInnovas11';
        insert acc;
        dmldemo.DML_insertDemo2();   
        list <Contact> lictCont=[SELECT id,lastname from Contact where LastName='Biden' ];
        system.assertEquals(1, lictCont.size());
    }
    @istest
    private static void DMLinsert5Test() {
        Salesforce_Project__c sp= new Salesforce_Project__c();
        sp.Project_Name__c='Test DMl';
        sp.Status__c='New';
        insert sp;
        dmldemo.DML_insertDemo3();
        List <Salesforce_Ticket__c> listST=[Select id, name, subject__c, salesforce_project__C from Salesforce_Ticket__c where Salesforce_Project__c=:sp.id and subject__c='Learn Apex DMLs'];
        system.assertEquals(1, listST.size());
        system.assertEquals('Learn Apex DMLs', listST[0].Subject__c);
    }
}
