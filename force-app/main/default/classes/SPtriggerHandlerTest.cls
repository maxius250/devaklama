@istest
public class SPtriggerHandlerTest {
    @istest
    private static void testSpUpdateDescription() {
        Salesforce_Project__c sp1= new salesforce_project__c();
        sp1.Project_Name__c='SP test1';

        Salesforce_Project__c sp2= new salesforce_project__c();
        sp2.Project_Name__c='SP test2';

        List<Salesforce_project__c> newSP = new List<Salesforce_project__c>{sp1,sp2};
        insert newSP;

        Set<Id> setSpid=new set <id>{sp1.id, sp2.id};

        test.startTest();
        SalesforceProjectTriggerHandler.SPupdateDescription1(setSpid);
        test.stopTest();
        List<Salesforce_Project__c> allsp=[SELECT id, description__C from Salesforce_Project__c];
        system.assert(allsp[0].description__c.contains('future'));



    }
}