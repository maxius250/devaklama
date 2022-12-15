public  class SOQLDemo {
    public static void AccountSOQL_1123() {
        List<account> lisaccount = [select id, name from account where name like '%A%'];
        System.debug('this is list of account '+lisaccount);
    }

    public static void AccountSOQL_11() {
        account acc = [select id, name, phone, accountNumber from account limit 1];
        System.debug('this is list of account '+acc);
        System.debug('the name is '+ acc.name+ ' account ID is '+ acc.id+ acc.phone+ acc.accountNumber);
    }
   
    public static void AccountSOQL_3() {
        List<account> lisaccount = [select id, name, phone, accountNumber from account order by createddate desc];
        
        for (account eachacoount : lisaccount) {
            string accname=eachacoount.name;
            string accphone=eachacoount.phone;
            System.debug('acc name is '+accname+' and its phone number is '+ accphone);
            System.debug('acc number is'+ eachacoount.accountNumber);
            
        }
        
        System.debug(lisaccount.size());
   }



   public static void accountsqlfilter(string accname1) {
    List<Account> accountFilter = [select id, name from account where name= :accName1];
    System.debug(accountFilter);
    
   }
}
