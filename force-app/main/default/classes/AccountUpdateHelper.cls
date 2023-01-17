public with sharing class AccountUpdateHelper {
    @invocableMethod
    public static void AccountUpdateWeb(List <ID> accIDs) {
        System.debug('inside invocable methode');
        List <Account> listAcc=[Select id, website, name from account where id in: accIDs ];
        for (Account eachacc : listAcc) {
            eachacc.website='www.softinnovas.com';
        }
        update listAcc;
    }
}
