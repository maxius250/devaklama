Map<String, Country_Code__c> allcountrycodes =Country_Code__c.getall();
System.debug('all country codes--->'+ allcountrycodes);
Set<Object> setName = new Set<Object>();
for (String eachcc : allcountrycodes.keyset()) {
    System.debug('country is '+ eachcc+ ' code is '+allcountrycodes.get(eachcc).code__c);
}