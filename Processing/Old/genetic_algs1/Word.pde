class Word{
  
  char[] word = {(char)random(65,90), (char)random(65,90), (char)random(65,90), (char)random(65,90)};
  
  
  Word(){
    
  }
  
  void printWord(){
    for(int i = 0; i < word.length; i++){
      print(word[i]);
    }
  }
  
  float getFitness(char[] correctWord){
    float fitness = 0;
    for(int i=0; i < word.length; i++){
      if(correctWord[i] == word[i]){
        fitness++;
      }
    }
    return fitness;
  }
  
}