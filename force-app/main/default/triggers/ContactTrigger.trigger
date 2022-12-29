trigger ContactTrigger on Contact (before insert, after insert, before update, after update) {


   if (trigger.isupdate) {

    if (Trigger.isbefore) {
        ContactTriggerHandler.conactUpdateValidation1(trigger.old, trigger.new, trigger.oldmap, trigger.newmap);
    }
}
}