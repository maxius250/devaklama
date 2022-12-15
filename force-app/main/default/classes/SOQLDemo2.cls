public  class SOQLDemo2 {
    public static void childToParent_SOQL(){
        List <Contact> contactList = [select id, name, Account.name, account.industry 
        from Contact where account.industry='Energy'];

        System.debug(contactList);
            
     for (Contact eachcontact : contactlist) {
        string accName= eachcontact.Account.name;
        System.debug('________contact name '+ eachcontact.name+ ' account name '+accName);
     }
    }
    public static void SOQL_ParentChild() {
        List<account> accopplist=[select name, AnnualRevenue, type, (select name, amount from opportunities where StageName='Closed Won') from Account where Type='Customer - Direct'];
    System.debug(accopplist);

    for (Account eachaccount : accopplist) {
        decimal annrev=eachaccount.AnnualRevenue;
        string accname=eachaccount.name;
        System.debug('this is acc----> '+ accName+ ' this is annual revenue '+ annrev);
        for (Opportunity eachopp : eachaccount.Opportunities) {
            System.debug('this is opp name '+ eachopp.name);
            System.debug('this is amount '+ eachopp.amount);
        }
    }
        

}
}
