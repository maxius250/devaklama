public  class SetDemo {
    public static void CitySet() {

        set <string> citySet1=new set <string>();

        citySet1.add('Tokyo');
        citySet1.add('Istanbul');
        citySet1.add('Tokyo');
        citySet1.add('Frankfurt');
        citySet1.add('Mary');
        System.debug('set of cities '+citySet1);

    }
    public static void setOfInteger() {
        set <integer> newIntegers= new set <integer>();
            newIntegers.add(10);
            newIntegers.add(15);
            newIntegers.add(21);
            newIntegers.add(15);
            newIntegers.add(15);
            system.debug('set of numbers ---> '+newIntegers);
    }
    public static set<integer> setFromList(list<integer> yonelist) {
        set <integer> intSet= new set <integer>();
        intSet.addAll(yonelist);
        return intSet;
    }
    public static set <string>  capitaliseSet(set <string> setSTR) {
        set <string>  capSET= new set <string> ();
        for (string  eachSet : setSTR) {
            system.debug('tjis is each '+ eachSet);
            string tempStr= eachSet.toUpperCase();
            capSET.add(tempStr);
            System.debug('this is capset '+capSET);
        }
        return capSET;

        



    }
}



MapDemo.retriveMap(6);