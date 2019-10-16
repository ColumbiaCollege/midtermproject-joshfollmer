//Josh Follmer midterm
// 10/15/19

//names a player constructor
Player player;
//names a fish constructor
Fish fish;

void setup() {
  //sets window size,image mode, background, and textsize
  size(1800, 800);
  background(#053DFF);
  imageMode(CENTER);
  textSize(48);
  //player is a new class
  player = new Player();
  //platform = new Platform();
  //fish is a new class
  fish = new Fish();
  //calls the method to start/reset the game
  fish.begin();
}

void draw() {

  background(#0028FF);
  //draws the fish
  fish.display();
  //checks if mario has touched a fish
  fish.update();  
  //draws and moves the player
  player.update();
}
//starts a method to move the player, its not in a class so it will be global 
void keyPressed() {
  //if mario is alive and a is pressed left = true
  if (key == 'a' && fish.dead == false) {
    player.left = true;
  }
  //if mario is alive and d is pressed right = true
  if (key == 'd' && fish.dead == false ) {
    player.right = true;
  }
  //if mario is alive and space is pressed up = true
  if (key == ' ' && fish.dead == false) {
    player.up = true;
  }
}
//starts a method that will stop mario from moving
void keyReleased() {
  //if a key is released left = false
  if (key == 'a') {
    player.left = false;
  }
  //if d key is released right = false
  if (key =='d') {
    player.right = false;
  }
  //if space key is released up = false
  if (key ==' ') {
    player.up = false;
  }
}
