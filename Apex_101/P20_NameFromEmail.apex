/*
Implement a function nameFromEmail that takes as input a valid email address in the format firstname.lastname@example.com. The function should extract the first name and last name from this email address and return a capitalized full name (i.e. FirstName LastName). Assume that the input will always be a valid email address with both the first name and last name separated by a period (.).

nameFromEmail('john.doe@apexsandbox.io') = 'John Doe'

nameFromEmail('JANE.DOE@GMAIL.COM') = 'Jane Doe'
*/
public String nameFromEmail(String email) {
     
        String[] parts = email.split('@');
        
        String[] names = parts[0].split('\\.');
       
        String firstName = names[0].substring(0, 1).toUpperCase() + names[0].substring(1).toLowerCase();
        String lastName = names[1].substring(0, 1).toUpperCase() + names[1].substring(1).toLowerCase();
        // Return the full name
        return firstName + ' ' + lastName;

    }