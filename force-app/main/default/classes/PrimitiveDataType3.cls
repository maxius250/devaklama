public class PrimitiveDataType3 {
    public void printNewdatetime() {
       datetime d3=datetime.newinstance(2006, 09, 06, 06, 13, 16);

       system.debug('this is d3 '+d3);

       long longtime=1341828183000l;
       datetime d4=datetime.newinstance(longtime);
       system.debug('this is d4 '+d4);

       long longtime1=0;
       datetime d5=datetime.newinstance(longtime1);
       system.debug('this is d5 '+d5);

       datetime nowtime=datetime.now();
       system.debug('now is '+nowtime);

       
    }
}
