/**
A prime number is a number greater than 1 that is not evenly divisible by any number greater than one and smaller than itself. For example, 13 is a prime number because it is not evenly divisible by any number from 2 to 12.

Implement the function nextPrime that takes as input an integer num and returns the smallest prime number greater than num.

nextPrime(10) = 11. 11 is the smallest prime number greater than 10

nextPrime(8) = 11. 11 is the smallest prime number greater than 8

 */

 public Integer nextPrime(Integer num) {
    Integer nextNum;
    if(num<=0){
        nextNum=2;
    }
    else
         nextNum = num + 1;

    while (true) {
        Boolean isPrime = true;
        for (Integer i = 2; i <= Math.sqrt(nextNum); i++) {
            if (Math.Mod(nextNum,i) == 0) {
                    isPrime = false;
                    break;
                }
            }
        if (isPrime) {
            return nextNum;
        }
        nextNum++;
    }

    return nextNum;
}
