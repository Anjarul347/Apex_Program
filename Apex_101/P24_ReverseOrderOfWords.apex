/**
Implement a function reverseWordsInASentence that will take a String containing words separated by spaces as an argument, and return a string with the order of the words reversed.

Example : If the sentence is The quick brown fox jumps over the lazy dog, then reverseWordsInASentence(String sentence) should evaluate to dog lazy the over jumps fox brown quick The
 */



 public String reverseWordsInASentence(String sentence){
      if (sentence == null) {
            return sentence;
        }
        List<String> words = sentence.split(' ');
        List<String> reversedWords = new List<String>();
        for (Integer i = words.size() - 1; i >= 0; i--) {
            reversedWords.add(words[i]);
        }
        return String.join(reversedWords, ' ');
    
}