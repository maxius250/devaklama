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
@future
public static void SPupdateDescription1(Set<id> setSPid) {
  System.debug('inside future method');
  List <Salesforce_Project__c> allSP= [SELECT id,description__c from Salesforce_Project__c where id in: setSPid];
 
  for (salesforce_project__c eachSP : allsp) {
    eachSP.description__c+= '.  Updated from the future';

  }
  update allSP;
}


public static void SPstatusComp(List <Salesforce_Project__c> sptriggerNew, list <Salesforce_Project__c> sptriggerOld, 
map <ID, salesforce_project__c> spTriggernewmap, map <ID, salesforce_project__c> spTriggeroldmap) {
  
  Set<id> Spcomptleted = new Set<id>();

  for (salesforce_project__C sp : spTriggernew) {
    if (sp.Status__c=='Completed' && sp.status__C!=sptriggeroldmap.get(sp.id).Status__c) {
      Spcomptleted.add(sp.id);
    }
  }
  if (!Spcomptleted.isempty()) {
    updateSTstatus(Spcomptleted);
  }

}

@future
public static void updateSTstatus(set<id> spid) {
  List <Salesforce_Ticket__c> allList= [SELECT id, status__C, salesforce_project__C from Salesforce_Ticket__c where Salesforce_Project__c in:spid];

  for (salesforce_ticket__C eachST : allList) {
    eachST.Status__c='Completed';

  }
  update allList;


}
}