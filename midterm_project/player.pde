

//starts a new class for the player
class Player {

  //declares variables for the mario image and marios x and y
  PImage img;
  float x;
  float y;
  //declares the booleans that are used in the keypressed and released methods earlier
  boolean left;
  boolean right;
  boolean up;

  Player() {
    //initializes variables
    left = false;
    right = false;
    up = false;
    //initializes marios image
    img = loadImage("mario.png");
    //x and y arent iniiialized here because they are initialized in the fish class, which is called in the setup
  }




  //starts a method that moves and draws mario
  void update() { 
    //if the a key is pressed left is true and x will decrease
    if (left) {
      x = x-5;
    }
    //if the d key is pressed right is true and x will increase
    if (right) {
      x = x + 5;
    }
    //if space bar is pressed up is true and y will decrease
    //its worth noting that when space is pressed y will decrease by 3 and not 5 because its always added 2
    if (up) {
      y = y - 5;
    }
    //if mario is alive and he is above the floor he will fall down  
    if (fish.dead == false && y < 780) {
      y = y + 2;
    }
    //draws mario
    image(img, x, y, 80, 80);
  }
}
