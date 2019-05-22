class Dino{
  float posY;
  float posX;
  float gravity = 0.6;
  float velY;
  float fitness = 0;
  
  int size = 50;
  
  boolean dead = false;
  boolean isBest = false;
  
  Brain brain;
  
  Dino(){
    brain = new Brain();
    
    posY = 0;
    posX = 0;
    velY = 0;
  }
  
  void show(){
    fill(0);
    rectMode(CENTER);
    
    rect(50, height - 100 - (posY + size), size, size + 50);
  }
  
  
  void move(){
    posY += velY;
    if(posY > 0){
      velY -= gravity;
    }else{
      velY = 0;
      posY = 0;
    }
  }
  
  void update(){
    if (!dead){
      move();
    }else if (????????){//if hit obstacle HOW DO WE DO COLLISIONS WITH MOVING OBSTACLES
        dead = true;
    }
  }
  
  void calculateFitness() {
    fitness = game.getPoints();//SOMETHING TO BE MADE LATER
  }
  
  Dino createOffspring(){
    Dino baby = new Dino();
    baby.brain = brain.clone();
    return baby;
  }
  
}
