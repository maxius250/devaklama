trigger CaseTrigger on Case (before insert, before update) {
   
    if (trigger.isupdate) {
        System.debug('Before update caase trigger cold');
        CaseTriggerHandler.countTriggerExecution++;
        System.debug('number of times trigger ran ===>' + CaseTriggerHandler.countTriggerExecution);
        integer size=trigger.size;
        CaseTriggerHandler.countTriggerRecords+=size;
        System.debug('number of times trigger ran ===>' + CaseTriggerHandler.countTriggerRecords);

 

    }
}
