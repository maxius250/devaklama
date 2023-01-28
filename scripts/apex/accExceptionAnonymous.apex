try {
Account acc=new Account();
insert acc;
string s;
s.toLowerCase();
} catch (DmlException dex){
    System.debug('DML went wrong');
} catch (Exception Em) {
    System.debug('Something went wrong buddy');
}
System.debug('Appex is simple');



