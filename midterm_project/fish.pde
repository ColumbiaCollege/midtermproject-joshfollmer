//starts a new class for fish
class Fish {
  //declares variables for the fish image and squid image
  PImage imgS;
  PImage imgF;

  //starts 5 pairs of x and ys for the squids
  float xS1;
  float yS1;

  float xS2;
  float yS2;

  float xS3;
  float yS3;

  float xS4;
  float yS4;

  float xS5;
  float yS5;

  //starts 3 pairs of x and ys for the fish
  float xF1;
  float yF1;

  float xF2;
  float yF2;

  float xF3;
  float yF3;

  //declares a variable for if mario has touched a fish
  boolean dead;
  //starts constructor for Fish class
  Fish() {
    //initializes the squid and fish images
    imgS = loadImage("squid.jpg");
    imgF = loadImage("fish.jpg");
  }

  //starts a method that will start and reset the game
  //I initialized the x and ys here and not the constructor so I can call this method when the player hits start over
  void begin() {
    //initializes the starting places for marios x and y and declares mario alive
    player.x = 100;
    player.y = 400;
    dead = false;
    //the squids are each set to a specfic y range, but the fish can spawn anywhere
    //also I think I should be using array lists here, but I'm not sure how to in this case

    //initializes starting places for squids
    xS1 = random(1100, 3000);
    yS1 = random(600, 800);

    xS2 = random(1100, 3000);
    yS2 = random(300, 500);

    xS3 = random(1100, 3000);
    yS3 = random(100, 300);

    xS4 = random(1100, 3000);
    yS4 = random(500, 600);

    xS5 = random(1100, 3000);
    yS5 = random(0, 100);

    //initializes starting place for fishes 
    xF1 = random(1100, 3000);
    yF1 = random(0, 800);

    xF2 = random(1100, 3000);
    yF2 = random(0, 800);

    xF3 = random(1100, 3000);
    yF3 = random(0, 800);
  }

  //starts a method to check if mario has tocuhed a fish
  void update() {
    //if marios x and y have tocuhed a squid or fishes x and y, mario is dead 
    //again I'm pretty sure this should be an array, but I'm not sure how to do that
    if (player.x > xS1 && player.x < xS1+40 && player.y > yS1 && player.y < yS1 + 60) {
      dead = true;
    }
    if (player.x > xS2 && player.x < xS2+40 && player.y > yS2 && player.y < yS2 + 60) {
      dead = true;
    }
    if (player.x > xS3 && player.x < xS3+40 && player.y > yS3 && player.y < yS3 + 60) {
      dead = true;
    }
    if (player.x > xS4 && player.x < xS4+40 && player.y > yS4 && player.y < yS4 + 60) {
      dead = true;
    }
    if (player.x > xS5 && player.x < xS5+40 && player.y > yS5 && player.y < yS5 + 60) {
      dead = true;
    }    
    if (player.x > xF1 && player.x < xF1+40 && player.y > yF1 && player.y < yF1 + 40) {
      dead = true;
    }
    if (player.x > xF2 && player.x < xF2+40 && player.y > yF2 && player.y < yF2 + 40) {
      dead = true;
    }
    if (player.x > xF3 && player.x < xF3+40 && player.y > yF3 && player.y < yF3 + 40) {
      dead = true;
    }
    //if mario has touched a fish display game over text
    if (dead==true) {
      fill(255);
      text("Game Over", 800, 350);
      text("Start Over", 800, 450);
    }
    //if mario has touched a fish and the mouse has clicked start over, run the begin method
    if (dead == true && mousePressed && mouseX < 1000 && mouseX > 800 && mouseY > 400 && mouseY < 450 ) {      
      begin();
    }
  }

  //starts method to display squids
  void display() {
    //as long as mario hasnt touched a fish, all squids and fish move to the left
    if (dead == false) {
      xS1 = xS1 - 2;
      xS2 = xS2 - 2;
      xS3 = xS3 - 2;
      xS4 = xS4 - 2;
      xS5 = xS5 - 2;

      xF1 = xF1 - 2;
      xF2 = xF2 - 2;
      xF3 = xF3 - 2;
    }
    //draws each squid
    image(imgS, xS1, yS1, 40, 60);
    image(imgS, xS2, yS2, 40, 60);
    image(imgS, xS3, yS3, 40, 60);
    image(imgS, xS4, yS4, 40, 60);
    image(imgS, xS5, yS5, 40, 60);

    //draws each fish
    image(imgF, xF1, yF1, 40, 40);
    image(imgF, xF2, yF2, 40, 40);
    image(imgF, xF3, yF3, 40, 40);

    //if a squid is at the left side, teleport to the right 
    if (xS1 < -20) {
      xS1 = random(1800, 2200);
      yS1 = random(720, 740);
    }
    if (xS2 < -20) {
      xS2 = random(1800, 2200);
      yS2 = random(300, 500 );
    }
    if (xS3 < -20) {
      xS3 = random(1800, 2200);
      yS3 = random(100, 300);
    }
    if (xS4 < -20) {
      xS4 = random(1800, 2200);
      yS4 = random(500, 600);
    }
    if (xS5 < -20) {
      xS5 = random(1800, 2200);
      yS5 = random(0, 100);
    }

    if (xF1 < -20) {
      xF1 = random(1800, 2200);
      yF1 = random(600, 800);
    }
    if (xF2 < -20) {
      xF2 = random(1800, 2200);
      yF2 = random(300, 500 );
    }
    if (xF3 < -20) {
      xF3 = random(1800, 2200);
      yF3 = random(100, 300);
    }
  }
}
