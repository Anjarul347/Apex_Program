/*
Implement the method selectActiveStudents that returns a list of all apxio__Student__c records with apxio__Active__c field checked. Make sure the students have a value in the Id and Name fields.

You will be working with the following custom object and field names for this problem:

apxio__Student__c
apxio__Student__c.apxio__Active__c

*/


public List<apxio__Student__c> selectActiveStudents() {
    List<apxio__Student__c> activeStudents=[
        SELECT ID,Name
        FROM apxio__Student__c
        WHERE apxio__Active__c=true
        AND ID != null
        AND Name != null
    ];

    return activeStudents;
}