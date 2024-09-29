/*

Implement the method classFromCourse that takes as input a string courseName, creates an apxio__Class__c record associated with the course named courseName, and returns the Id of the new record. The new class should have the same Name as the course.

You should not create a new apxio__Course__c record. The new class should be linked to the course that already exists in the database. In case no course with the given name is found, do not create any class record and return null.

You will be working with the following custom object and field names for this problem:

apxio__Course__c
apxio__Class__c
apxio__Class__c.apxio__Course__c

*/

public Id classFromCourse(String courseName) {

     List<apxio__Course__c> course = [
        SELECT Id, Name
        FROM apxio__Course__c
        WHERE Name = :courseName
        LIMIT 1
        
    ];
    
    if (course.isEmpty()) {
        return null; 
    }

    
    apxio__Class__c newClass = new apxio__Class__c(
        Name = course[0].Name,        
        apxio__Course__c = course[0].Id 
    );
    
    insert newClass;

 
    return newClass.Id;
}