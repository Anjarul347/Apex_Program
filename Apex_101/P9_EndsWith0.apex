/*
Given an integer, return true if the integer ends with 0, otherwise return false.

isEndWithZero(12) == false

isEndWithZero(1230) == true

*/

public Boolean isEndWithZero(Integer num){
      return Math.mod(num,10) == 0;
}