public with sharing class AccountAction {
   @invocableMethod(label='Update Acc revenue'
    description='Submission of child opp amount displayed on parent Accounts annual revenue'
     category='Account')
     
   public static void UpdateAccountRevenue(List<Id> oppId) {
    List<Opportunity> newOpp=[SELECT accountId from Opportunity WHERE id=: oppId[0] with security_enforced];
    ID parentAccId=newOpp.get(0).accountId;
    List<Opportunity> childOpp=[SELECT amount from Opportunity WHERE AccountId=:parentAccId];
    Decimal totalAmount=0;
    for (Opportunity opp : childOpp) {
        if (opp.Amount!=null && opp.amount>0) {
            totalAmount= totalAmount+opp.Amount;   
        }
    }
    account parentAcc=new Account (id=parentAccId, AnnualRevenue=totalAmount);
    update parentAcc;

   }
}