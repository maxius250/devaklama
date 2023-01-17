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
   public static void updateVip(List <Account> accTriggerNew, 
                                List <Account> accTriggerold, 
                                map <id, account> accTriggerNewMap, 
                                map <id, account> accTriggeroldMap  ) {

      Set<id> setAccID = new Set<id>();
     
        for (Account eachacc: accTriggerNew) {
           
                if ( eachacc.vip__c != accTriggeroldMap.get(eachacc.id).vip__c) {
                setAccID.add(eachacc.id);
                System.debug('this is set of acc'+ setAccID);
             }
            }


        List<Contact> Listcontacts = [SELECT id, name,  account.id, vip__c  FROM Contact where account.id in :setAccID];

        for (contact eaccont : Listcontacts) {

            boolean accVip=accTriggerNewMap.get(eaccont.accountid).vip__c;
            eaccont.vip__c=accVip;
            System.debug('contact===> '+ eaccont+' acc VIP'+accVip+eaccont.vip__c);
            
        }

        update Listcontacts;
        }

       

    }