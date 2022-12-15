public  class Candidates {
    public string Name;
    public string Gender;
    public static string CompanyName;
    public static integer countCandidate=0;

    public Candidates(){
        countCandidate++;
    }

    public void printCandidate(){

        System.debug('Candidate name is '+ name+ ' ( '+Gender+' )');
        System.debug('Company name is '+CompanyName );
    }

    public static void printCandidateInfoSt(){
        System.debug('Company name is '+CompanyName );
    }
  
}
