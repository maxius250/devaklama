ListDemo.allcats();
system.debug(ListDemo.candidatesList(2));

ListDemo.randomIntegerList();


list<string> liststr=new list<string>();
liststr.add('123');
if (liststr.isempty()) {
    System.debug('list is empty');
}else {
    System.debug(liststr);
}



List<string> listInteger = new List<string>();
listInteger.add('aman');
listInteger.add('oraz');
listInteger.add('dunya');
listInteger.add('durdy');
listInteger.add('zylyha');
System.debug('before sort '+listInteger);
listInteger.sort();
System.debug('after sort '+listInteger);
