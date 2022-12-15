Map<string, string> countryAndCurrency = new Map<string, string>();
countryAndCurrency.put('USA', 'Dollars');
countryAndCurrency.put('France', 'Euro');
countryAndCurrency.put('German','Euro');
countryAndCurrency.put('India','Rupee');
countryAndCurrency.put('India', 'Rupees');
countryAndCurrency.put('Salvador','Bitcoin');
countryAndCurrency.put('Turkey', 'Lira');
countryAndCurrency.put('Japan', 'Yen');

System.debug(countryAndCurrency);

string IndiaCurrency=countryAndCurrency.get('India');
string TurkeyCurrency=countryAndCurrency.get('Turkey');

System.debug('Turkey currency is --->'+TurkeyCurrency);
System.debug('India currency is ------>'+IndiaCurrency);


Set<string> CountrykeySet = countryAndCurrency.keySet();
System.debug('tis is set of key Countries '+ CountrykeySet);

List<string> ValuesCurrency = countryAndCurrency.values();

System.debug('this is values-----> '+ ValuesCurrency);



    for (string eachCurrencyandCountry : CountrykeySet) {
       string princountry='This is '+eachCurrencyandCountry;
       string printcurrency=', and its currency is '+countryAndCurrency.get(eachCurrencyandCountry);
       System.debug(princountry+printcurrency);
    }
