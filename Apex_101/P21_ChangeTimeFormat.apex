/*
13:50 and 01:50 PM are 24-hour and 12-hour representations of the same time. Implement the method changeTimeFormat that takes as input a string strTime formatted as a 24-hour string, and returns the equivalent 12-hour string.

Examples:

changeTimeFormat('08:05') returns '08:05 AM'

changeTimeFormat('00:05') returns '12:05 AM'

changeTimeFormat('23:15') returns '11:15 PM'
*/

public String changeTimeFormat(String strTime) {
    String[] timePart=strTime.split(':');

    Integer hour=Integer.valueOf(timePart[0]);
    Integer minutes=Integer.valueOf(timePart[1]);

    if(hour==0){
        return '12:'+ timePart[1]+ ' AM';
    }
    else if(hour<12){
        return strTime + ' AM';
    }
    else if(hour==12){
        return strTime + ' PM';
    }
     else if(hour>21){
        return String.valueOf(hour-12) +':'+timePart[1]+' PM';
    }
    else if(hour<22){
        return '0'+String.valueOf(hour-12) +':'+timePart[1]+' PM';
    }
    else{
        return String.valueOf(hour) +':'+timePart[1]+ ' PM';
    }

    
}