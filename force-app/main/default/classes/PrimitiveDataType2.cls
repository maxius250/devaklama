public class PrimitiveDataType2 {
    public void printNewDate(){
    system.debug('Create a new date instance');
    date newdate123=date.newinstance(1996, 06, 12);
    system.debug('new date is ' + newdate123);

    date newdate1234=date.newinstance(2022, 02, 30);
    system.debug('new date2 is ' + newdate1234);
    date todayDate=date.today();
    system.debug('Today is '+ todayDate);

    }

    public void printNewtime(){

        time mytime=time.newinstance(18, 12, 09, 03);
        system.debug(mytime);
    }

    public void printNewDatetime(){

        date newdate=date.today();
        time newtime=time.newinstance(9, 23, 12, 00);

        datetime dt1=datetime.newinstance(newdate, newtime);

        system.debug(dt1);

        datetime dt2=datetime.newinstance(2021, 12, 19);

        datetime d3=datetime.newinstance(2011, 12, 15, 16, 12, 15);

        system.debug('d2 is '+dt2 +' and d3 is '+ d3);
    }

}
