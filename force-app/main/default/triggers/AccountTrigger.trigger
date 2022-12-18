trigger AccountTrigger on Account  (before insert, after insert, before update, after update) {
   //List<account> accoldlist = trigger.old;
   //List<account> accnewlist =trigger.new ;
   Map<id, account> accOldMap   = trigger.oldmap;
   Map<id, account> accNewMap   = trigger.newmap;
   Set<id> accIDs = accOldMap.keyset();
   integer countchanged=0;

   for (ID eachid : accIDs) {
    account newacc=accNewMap.get(eachID);
    string newWeb=newAcc.website;
    System.debug('this is new web===> '+ newWeb);

    account oldacc=accOldMap.get(eachID);
    string oldWeb=oldAcc.website;
    System.debug('this is old web===> '+ oldWeb);


    if (newweb!=oldweb) {
        System.debug('account is '+newacc.name+ ' website changed to ==> '+newWeb);
        countchanged++;
    }
System.debug('website updated number=== '+countchanged );
    
   }

 
 /*if (trigger.isafter && trigger.isupdate) {
    Set<id> accIDs = accOldMap.keyset();

    for (ID eachID : accIDs) {
        account newAcc=accOldMap.get(eachID);

        System.debug('Old acc name is ===> '+newAcc.name);

        account oldAcc=accnewMap.get(eachID);

        System.debug('Old acc name is ===> '+oldAcc.name);
    }
 }
 
 
 /*  if (trigger.isbefore && trigger.isinsert) {
    System.debug('before insert old map ==> '+ accOldMap);
    System.debug('before insert new map ==> '+ accNewMap);
    }    

if (trigger.isafter && trigger.isinsert) {
        System.debug('after insert old map ==> '+ accOldMap);
        System.debug('after insert new map ==> '+ accNewMap);
        }
    
    if (trigger.isbefore && trigger.isupdate) {
            System.debug('before update old map ==> '+ accOldMap);
            System.debug('before update new map ==> '+ accNewMap);
            }
    
    if (trigger.isafter && trigger.isupdate) {
                System.debug('after update old map ==> '+ accOldMap);
                System.debug('after update new map ==> '+ accNewMap);
                }
   
   
   
   
   
   
/*if (trigger.isupdate) {
    if (trigger.isbefore) {
        for (account oldAcc : accoldlist) {
            System.debug('this is old acc name before ===> '+oldAcc.name +' this is old acc ID ===> ' +oldAcc.id );
        }

        for (account newAcc : accnewlist) {
            System.debug('this is new acc name before ===> '+newAcc.name +' this is new acc ID ===> ' +newAcc.id );
        }
        
    }

    if (trigger.isafter) {
        for (account oldAcc : accoldlist) {
            System.debug('this is old acc name after ===> '+oldAcc.name +' this is old acc ID ===> ' +oldAcc.id );
        }

        for (account newAcc : accnewlist) {
            System.debug('this is new acc name after ===> '+newAcc.name +' this is new acc ID ===> ' +newAcc.id );
        }
        
    }
   }




   /* if (trigger.isinsert) {
        if (Trigger.isbefore) {
            System.debug('old accaunt   account before insert trigger called '+ trigger.old);
        }
        if (Trigger.isafter) {
            System.debug('old account after insert trigger called '+trigger.old);
       }}

    if (trigger.isupdate) {
        if (Trigger.isbefore) {
            System.debug('old accaunt   account before update trigger called '+ trigger.old);
        }
        if (Trigger.isafter) {
            System.debug('old account after update trigger called '+trigger.old);
       }
    } 
}
    
    
   /* if (trigger.isbefore && trigger.isupdate) {
        System.debug('BEFORE update newly insterdet record====> '+acclisttrigger);
        System.debug('BEFORE update size of new lis is '+ acclisttrigger.size());

        for (account acc : acclisttrigger) {
            System.debug('BEFORE update this is new acc id '+ acc.id+' , BEFORE update new acc name '+acc.name);
            
        }
    }
    if (trigger.isafter && trigger.isupdate) {
        System.debug('AFTER update newly insterdet record====> '+acclisttrigger);
        System.debug('AFTER update size of new lis is '+ acclisttrigger.size());

        for (account acc : acclisttrigger) {
            System.debug('AFTER update this is new acc id '+ acc.id+' , AFTER update new acc name '+acc.name);
            
        }
    }
   /* if (trigger.isinsert) {
        if (Trigger.isbefore) {
            System.debug('account before insert trigger called');
        }
        if (Trigger.isafter) {
            System.debug('account after insert trigger called');
       }
    } 
    
   if (trigger.isupdate) {

    if (Trigger.isbefore) {
        System.debug('account before update trigger called');
    }
    if (Trigger.isafter) {
        System.debug('account after update trigger called');
   */
    }
   






    
   