public with sharing class CaseFlowController {
    @InvocableMethod (label='send email to contact' description='Auotgenerated email sent to Customers' category='Case')
    public static void sendEmailtoContact(List <Request> inputParameters) {
        id contactId=inputParameters[0].contactIds;
        String caseid=inputParameters[0].caseIds;
        String casenumber=inputParameters[0].caseNumber;
       
        Messaging.SingleEmailMessage message= new Messaging.SingleEmailMessage ();
       
        message.subject='Your case has been recieved '+ casenumber;
        message.plaintextbody='Hey Customer, thanks for reaching soft innovas';
        message.toaddresses=new List <String>{contactId};
        message.setsaveasactivity(true);
        list<messaging.SingleEmailMessage> messages= new list<messaging.SingleEmailMessage>();
        messages.add(message);
        Messaging.SendEmailResult [] results=Messaging.sendEmail(messages);
       
        if (results[0].success) {
            System.debug('Email was sent succefully');
        } else {
            System.debug('Email delivery got failed');
  
        }
       
    }

    public class Request{
        @InvocableVariable (label='Case record Id' description='sth0' required=true)
        public string  caseIds;
        
        @InvocableVariable (label='Contact record Id' description='sth1' required=true)
        public string contactIds;
       
        @InvocableVariable (label='Case record Number' description='sth2')
        public string caseNumber;
    }
}