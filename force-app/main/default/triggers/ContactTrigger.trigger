trigger ContactTrigger on Contact (before insert, after insert, before update, after update) {

    if (trigger.isinsert) {
        if (Trigger.isbefore) {
            System.debug('Contact before insert trigger called');
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
   }
   
   }    


}