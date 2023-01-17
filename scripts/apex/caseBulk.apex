List<Case> listCase = new List<Case>();

for (Integer i = 0 ; i < 205; i++) {
    case c= new case();
    c.subject='There is a bug';
    c.description='Please resolve the bug';
    c.status='New';
    c.origin='Web';
    listCase.add(C);
}
insert listCase;


List <Case> getCases = [Select id, status from case where status='New'];

for (case eachcase : getcases) {
    eachcase.status='Working';
}

update getCases;