public  class PrimitiveDataTypeDemo {
    public void printBasicDataType1(){
        system.debug('Print data type!11');
        string batchname='Batch 11';
        integer totalCandidates= 80;
        boolean isAdminCompleted=true;
        string batchdescription= batchname+ ' are the best!';


        system.debug('batch name is '+batchname);
        system.debug('total candidates are '+ totalCandidates);
        system.debug('is admin completed '+isAdminCompleted);
        system.debug(batchdescription);

        decimal decvalue=18.01;
        Long longValue=2147483768987679648L;
        
        


        system.debug('Long is '+ longValue);
        system.debug('decimal is '+ decvalue);}

    public void printBasicDataType2(){
        object obj12='This is a string';
        object objdec= 10;

                 system.debug('Object can be string '+obj12+ ' and Integer '+objdec);
         
                      Id accoundID='0018d00000KUippAAD';
                    system.debug(accoundID);
            }

}
