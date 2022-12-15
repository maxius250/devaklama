public  class CalcList {
    public static integer  sumOfList2(list<integer> integerlist){
        integer returnInt=0;
        for (integer eachinteger : integerList) {
            System.debug('each int '+eachinteger);
            returnInt+=eachinteger;
            System.debug('return '+returnInt);
        }
        return returnInt;
    }
}

