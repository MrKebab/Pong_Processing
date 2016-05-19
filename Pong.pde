boolean[] touches=new boolean[128];
barre Bar_p1 = new barre(40, 300,);
barre Bar_p2 = new barre(960, 300,);
Ball ball = new Ball();
int score_p1 =0;
int score_p2 = 0;
boolean play = false;
boolean pause = false;
int vitesse = 7;
void setup() {
  background(0);
  size(1000, 600);
  fill(255);
  stroke(255);
  strokeWeight(20);
  line(500, 0, 500, 600);
  rectMode(CENTER);
  textSize(50);
  ball.ini();
}

void draw() {
  CleanUp();
  move();
  score();
}

void CleanUp() {
  background(0);
  fill(255);
  stroke(255);
  strokeWeight(20);
  line(width/2, 0, width/2, height);
  noStroke();
}


void move() {
    if (keyCode == ENTER && play == false){play = true; score_p1 =0; score_p2 = 0;}
    if (play == true && pause == false) {
    if (verifieClavier('z') == true)Bar_p1.Up();
    if (verifieClavier('s') == true)Bar_p1.Down(); 
    if (verifieClavier('o') == true)Bar_p2.Up();
    if (verifieClavier('l') == true)Bar_p2.Down(); 
    ball.verify();
    ball.move();
  }
   Bar_p1.Display();
   Bar_p2.Display();
   ball.Display();
   if (verifieClavier(32) == true){vitesse = 2;}else {vitesse = 7;}
}
void score() {
  text(score_p1, 412, 50);
  text(score_p2, 550, 50);
  if (score_p1 == 10){
  play = false;
  background(0,0,0,140);
  text("P1 WON", 412, 50);
  text("Press Enter to continue", 250, 500);
  }
  if (score_p2 == 10){
    play = false;
    background(0,0,0,10);
    text("P2 WON", 412, 50);
    text("Press Enter to continue", 250, 500);
  }
}
