/*
The method insertStudent takes as input strings name and email, and returns a record ID. Implement the method to insert an apxio__Student__c record with the Name and apxio__Email__c fields filled out, and return the Id of the new record.


You will be working with the following custom object and field names for this problem:

apxio__Student__c
apxio__Student__c.apxio__Email__c

*/

public Id insertStudent(String name, String email) {
    apxio__Student__c newStudent = new apxio__Student__c();
    
    newStudent.Name = name;
    newStudent.apxio__Email__c = email;
    
    insert newStudent;
    
    return newStudent.Id;
    
}