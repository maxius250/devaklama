public class ContactTriggerHandler {
   public static void conactUpdateValidation1(list <Contact> contriggerold, 
                                              list <Contact> contriggernew, 
                                              map <id, Contact> contriggeroldmap, 
                                              map <id, Contact> contriggernewmap) {
    
    for (Contact eachCont : contriggernew) {
        if ( contriggeroldmap.get(eachcont.id).LeadSource=='Partner Referral') {
            eachCont.addError('Cannot update Partner referral Contact');
        }
        
    }
   }
   public static void conactUpdateValidation2(list <Contact> contriggerold, 
                                              list <Contact> contriggernew, 
                                              map <id, Contact> contriggeroldmap, 
                                              map <id, Contact> contriggernewmap) {
    
    for (Contact eachCont : contriggernew) {
        if ( contriggeroldmap.get(eachcont.id).LeadSource!=contriggernewmap.get(eachcont.id).LeadSource) {
            String customerror= system.label.ContactValidation2;
            eachCont.LeadSource.addError(customerror);
        }
        
    }
   }
}
