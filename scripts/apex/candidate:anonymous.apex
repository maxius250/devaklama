Candidates.CompanyName='Injust';
System.debug('Start of candidate count is ==='+Candidates.countCandidate);
Candidates canInfo= new Candidates();

canInfo.name='Paul';
canInfo.Gender='Male';
canInfo.printCandidate();

Candidates canInfo2= new Candidates();

canInfo2.name='Jean';
canInfo2.Gender='Female';
canInfo2.printCandidate();

Candidates canInfo3= new Candidates();

canInfo3.name='Anna';
canInfo3.Gender='Female';
canInfo3.printCandidate();
Candidates canInfo4= new Candidates();
canInfo4.name='William';
canInfo4.Gender='Male';
canInfo4.printCandidate();

System.debug('End of candidate count is ===='+Candidates.countCandidate);
