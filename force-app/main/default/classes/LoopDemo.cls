public class LoopDemo {
    public void loopTest(){
    integer count;
    while (count<=25) {       
        System.debug(count);
            count++;
    }
    
}
    public void loopDemo2 (integer n){

        for (Integer i = 0; i <= n; i++) {
            System.debug(i);
        }
    }
    public void loopDemo3(integer strn, integer endn){

        if (strn>=endn) {
            system.debug('not allowed bro');
        }else { for (Integer i = strn; i <=endn ; i++) {
            integer modI= math.mod(i, 2);
            if (modI==1) system.debug(i); }  
        }
    }
}



