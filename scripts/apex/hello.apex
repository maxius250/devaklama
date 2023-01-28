// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

string tempvar = 'Enter_your_name_here';
System.debug('Hello World!');
System.debug('My name is ' + tempvar);

Map<String, Object> inputs = new Map<String, Object>(); 
inputs.put('ownerId', '0058d000004q261AAA');
inputs.put('recordId', '0018d00000KUipoAAD');
flow.Interview autolaucnflow= flow.Interview.createinterview('Auto_Launch_Flow_Demo', inputs);
autolaucnflow.start();A