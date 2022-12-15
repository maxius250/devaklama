Calculator calc=new Calculator();
integer addInteger=calc.add(12,5,6);
system.debug('the sum = '+addInteger);




integer x=13;



integer y=18;
integer c2sum3=calc.add(x, y);
system.debug(c2sum3);




Calculator c1=new Calculator();
c1.welcomeMessage();
c1.printNewWelcome('this is my message1');
string msg='Hi my calc2';
c1.printNewWelcome(msg);
c1.printNewWelcome('Print this asap');
Calculator c2=new Calculator();
string returnC2=c2.printAndReturnMessage('print this asap');
system.debug(returnC2);

