/*
Rock beats scissors, scissors beats paper, paper beats rock. Implement the method rockPaperScissors that takes as parameters two strings player1 and player2 representing the moves played by player 1 and player 2, valid moves being 'rock', 'paper', and 'scissors'. Return 1 if player 1 wins, 2 if player 2 wins, and 0 if no one wins.

rockPaperScissors('rock', 'paper') = 2

rockPaperScissors('scissors', 'paper') = 1

rockPaperScissors('paper', 'paper') = 0
*/

public Integer rockPaperScissors(String player1, String player2) {
    if(player1=='rock'){
        if(player2=='paper')
            return 2;
        else if(player2=='rock')
            return 0;
        else 
            return 1;
    }

    else if(player1=='scissors'){
        if(player2=='rock')
            return 2;
        else if(player2=='scissors')
            return 0;
        else
            return 1;
    }
    else if(player1=='paper'){
        if(player2=='rock')
            return 1;
        else if(player2=='paper')
            return 0;
        else
            return 2;
    
    }
    else 
        return 0;
}