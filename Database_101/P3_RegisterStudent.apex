/*
The method registerStudent takes as input strings name, phone and email, and returns a string. Implement the method to insert an apxio__Student__c record with the Name, apxio__Phone__c and apxio__Email__c fields filled out, and return the autogenerated apxio__Registration_Number__c of the new record.


You will be working with the following custom object and field names for this problem:

apxio__Student__c
apxio__Student__c.apxio__Email__c
apxio__Student__c.apxio__Phone__c
apxio__Student__c.apxio__Registration_Number__c

*/


public String registerStudent(String name, String phone, String email) {
    apxio__Student__c newStudent=new apxio__Student__c();

    newStudent.name=name;
    newStudent.apxio__Phone__c=phone;
    newStudent.apxio__Email__c=email;

    insert newStudent;

    apxio__Student__c stuReg=[
        SELECT apxio__Registration_Number__c 
        FROM apxio__Student__c
        WHERE ID = : newStudent.ID
    ];

    return stuReg.apxio__Registration_Number__c;
  

}