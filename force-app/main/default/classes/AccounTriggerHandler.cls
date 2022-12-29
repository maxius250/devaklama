public  class AccounTriggerHandler {
   public static void updateAccDescr(List <Account> accTriggerNew, 
                                    List <Account> accTriggerold, 
                                    map <id, account> accTriggerNewMap, 
                                    map <id, account> accTriggeroldMap  ) {
   

    for (Account eachacc : accTriggerNew) {
        if (trigger.isinsert&&eachacc.active__c=='Yes') {
            eachacc.description='Account is active.Enjoy';
        }
        if (trigger.isupdate) {
            if (eachacc.Active__c=='Yes' && accTriggeroldMap.get(eachacc.id).active__c!=accTriggernewMap.get(eachacc.id).active__c) {
                eachacc.description='Account is active.Enjoy111';
            }
            
        }
      }
   }
}
