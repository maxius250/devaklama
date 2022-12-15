DateTimeMethodsDemo dtm=new DateTimeMethodsDemo();
date newdate=date.today();
boolean newDateLYcheck=dtm.leapYearCheck(newdate);
system.debug(newDateLYcheck);

date newdate2=date.newinstance(2000, 12, 15);
system.debug(dtm.leapYearCheck(newdate2));



DateTimeMethodsDemo calcinmonthes=new DateTimeMethodsDemo();


calcinmonthes.CalcHours();

calcinmonthes.CalculateAgeInMonthes();
calcinmonthes.CalculateAgeIndays();
calcinmonthes.subscribtionCalc();