/*  Student information for assignment:
 *
 *  On my honor, <NAME>, this programming assignment is my own work
 *  and I have not provided this code to any other student.
 *
 *  UTEID:
 *  email address:
 *  Grader name:
 *  Number of slip days I am using:
 */

// add imports as necessary

import java.util.List;
import java.util.Map;


public class HangmanManager {

    // instance vars
    
    public HangmanManager(List<String> words) {

    }
    
    
    // pre: none
    // post: return the number of words in the original Dictionary with the given length
    public int numWords(int length) {
        return 0;
    }


    // pre: numWords(wordLen) > 0, numGuesses >= 1, HangmanMain.EASY <= difficulty <= HangmanMain.HARD
    public void reset(int wordLen, int numGuesses, int diff) {

    }
    
    
    
    // pre: none
    // return the number of words that are still posibilities
    public int numWordsCurrent() {
        return 0;
    }
    
    // pre: none
    // return number of wrong guesses left in this game
    public int getGuessesLeft() {
        return 0;
    }
    
    
    // pre: none
    // post: return a String version of the guesses made so far
    public String getGuessesMade() {
        return "DEFAULT";
    }
    
    
    // pre: none
    // post: return true if guess has already been used, false otherwise
    public boolean alreadyGuessed(char guess) {
        return false;
    }
    
    // get the current pattern. (In other words the revealed characters and '-'s
    // for characters not yet revealed.
    public String getPattern() {
        return "DEFAULT";
    }
    
    // pre: !alreadyGuessed(ch)
    // post: return a map with the resulting patterns and the number of
    // words in each of the new patterns
    public Map<String, Integer> makeGuess(char guess) {
        
        return null;
    }
    
    



    // pre: numWordsCurrent() > 0
    // return the secret word the manager picked 
    // if there is more than one word left, pick one at random
    public String getSecretWord() {
        return "DEFAULT";
    }
}
