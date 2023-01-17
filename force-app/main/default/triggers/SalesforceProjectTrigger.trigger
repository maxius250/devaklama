trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert,after insert, before update, after update) {
if (Trigger.isinsert && Trigger.isAfter) {

SalesforceProjectTriggerHandler.creatDefaultST(trigger.new);
SalesforceProjectTriggerHandler.SPupdateDescription1(trigger.newMap.keySet());
System.debug('Called from tigger');   
}

if (Trigger.isupdate && Trigger.isbefore) {
    //SalesforceProjectTriggerHandler.SPstatust(trigger.new, trigger.old, trigger.newmap, trigger.oldmap);
}
if (Trigger.isupdate && Trigger.isafter){
    SalesforceProjectTriggerHandler.SPstatusComp(trigger.new, trigger.old, trigger.newmap, trigger.oldmap);
}

}