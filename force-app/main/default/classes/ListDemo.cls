public  class ListDemo {
    public static string candidatesList(integer i) {

        List<string> listCandidates = new List<string> ();
        listCandidates.add('Marc');
        listCandidates.add('Elon');
        listCandidates.add('Bill');
        listCandidates.add('Barack');
        listCandidates.add('Bill');

        system.debug('This is candidates List -----> '+ listCandidates);

        string returnstring='';

        if (i<listcandidates.size()) {
            returnstring=listCandidates[i];
        } else {

            returnstring='No value found';
        }
        return returnstring;
    
    }
    public static void randomIntegerList(){
        List<integer> listInteger = new List<integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        listInteger.add(15);
        System.debug('This is Integer List-----> '+listInteger);
        System.debug('This is index 3 '+listInteger[3]);
        System.debug('This is index 3 '+listInteger.get(0));
    
    }
    public static void allcats(){

        list<cat> listCats= new list<cat>();
        Cat sfCat1=new Cat('one1','wite1');
        Cat sfCat2=new Cat('one2','wite2');
        Cat sfCat3=new Cat('one3','wite3');
        Cat sfCat4=new Cat('one4','wite4');
        listCats.add(sfCat1);
        listCats.add(sfCat2);
        listCats.add(sfCat3);
        listCats.add(sfCat4);
        system.debug(listCats);
    }
}
