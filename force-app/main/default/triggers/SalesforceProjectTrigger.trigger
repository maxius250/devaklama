trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert,after insert, before update) {
if (Trigger.isinsert && Trigger.isAfter) {

SalesforceProjectTriggerHandler.creatDefaultST(trigger.new);
    
}

if (Trigger.isupdate && Trigger.isbefore) {
    SalesforceProjectTriggerHandler.SPstatust(trigger.new, trigger.old, trigger.newmap, trigger.oldmap);
}
}