public  class SalesforceProjectTriggerHandler {
   public static void creatDefaultST(list <Salesforce_Project__c> sptriggerNew) {
    List<Salesforce_Ticket__c> newSTlist = new List<Salesforce_Ticket__c>();

        for (salesforce_project__c eachSP : sptriggerNew) {
        Salesforce_Ticket__c st= new Salesforce_Ticket__c();
        st.Subject__c='Default Ticket';
        st.salesforce_project__c=eachSP.id;
        newSTlist.add(st);
     }
   
     if (!newSTlist.isempty()) {
    insert newSTlist;
   }
}

public static void SPstatust(List <Salesforce_Project__c> sptriggerNew, list <Salesforce_Project__c> sptriggerOld, 
                            map <ID, salesforce_project__c> spTriggernewmap, map <ID, salesforce_project__c> spTriggeroldmap) {
    
    Set<id> spCompletedID = new Set<id>();
      for (Salesforce_Project__c eachSP : sptriggerNew) {
        if (eachSP.status__C=='Completed' && eachSP.status__C!=spTriggeroldmap.get(eachSP.id).status__C) {
        spCompletedID.add(eachSP.id);
        }
      }  
    List<salesforce_ticket__c> ListST = [SELECT id,status__C, salesforce_project__c from Salesforce_Ticket__c where Salesforce_Project__c in:spCompletedID and status__C!='Completed'];

    for (Salesforce_ticket__C eacst : ListST) {
        if (spCompletedID.contains(eacst.Salesforce_Project__c)) {
            salesforce_project__c spNew=spTriggernewmap.get(eacst.salesforce_project__c);
            spnew.adderror('You cannot');
        }
    }
}
}