public class DateTimeMethodsDemo {
    public void CalculateAgeInMonthes () {
        date bthday= date.newinstance(1996, 06, 09);

        date todayDate=date.today();

        integer ageInmonthes=bthday.monthsbetween(todayDate);
        system.debug('Maksats age in months is '+ ageInmonthes);

    }
    public void CalculateAgeIndays(){
        date bthday= date.newinstance(1996, 06, 09);

        date todayDate=date.today();

        integer ageIndays=bthday.daysbetween(todayDate);
        system.debug('Maksats age in days is '+ ageIndays);

    }
    public void subscribtionCalc(){

        date todayDate=date.today();
        Date subsends=todayDate.adddays(1000);
        system.debug('Subscrition ends in '+ subsends);
        integer subendyear=subsends.year();
        integer subendmonth=subsends.month();
        system.debug(subendyear);
        system.debug(subendmonth);
    }

    public void CalcHours(){
        datetime timenow=datetime.now();
        datetime timegone=timenow.addhours(51);
        system.debug('Now+51 hours is '+timegone);
        date dategone=timegone.date();
        system.debug(dategone);

    }

    public boolean  leapYearCheck(date dt){

        integer year=dt.year();
        boolean lp=date.isleapYear(year);
        return lp;
    }
}


