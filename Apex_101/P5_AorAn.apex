/*

Given a work, prepend it with the correct indefinite article ("a" or "an") followed by a space based on the following rule: words starting with a vowel (a, e, i, o, or u) are prepended with "an", while words starting with any other letter are prepended with "a".

aOrAn('apple') = 'an apple'

aOrAn('banana') = 'a banana'
*/

public String aOrAn(String word) {
    //code here
   String vowels = 'aeiouAEIOU';
        
       
        if (vowels.contains(word.substring(0, 1))) {
            return 'an ' + word;
        } else {
            return 'a ' + word;
        }
}