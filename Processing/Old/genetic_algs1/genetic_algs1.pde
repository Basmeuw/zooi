Word[] w = new Word[100];

//FISH
char[] correctWord = {70, 73, 83, 72};

void setup(){

  for(int i=0; i<w.length; i++ ){
    w[i] = new Word();
  }
  for(int i=0; i<w.length; i++ ){
    w[i].printWord();
    print("\n");
  }
  
  for(int i=0; i<w.length; i++ ){
    w[i].printWord();
    print(w[i].getFitness(correctWord));
    
    print("\n");
  }
  
  
}

void draw(){
  
  
}