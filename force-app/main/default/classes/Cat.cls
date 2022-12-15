public  class Cat {
    public string name;
    public string colour;

    public Cat(string n, string clr){
        name=n;
        colour=clr;
        sleeping();

    }
    public void sleeping(){
        System.debug(name +' kinda sleeping!');
    }
    
}
