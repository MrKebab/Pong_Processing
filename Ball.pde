class Ball {
  int X, Y;
  boolean top, bottom, right, left;
  Ball () {
    X = 500;
    Y = 300;
  }
  void Display() {
    stroke(0);
    strokeWeight(2);
    rect(X, Y, 20, 20);
  }
  
  void ini() {
    float ran_r = random(0,1);
    float ran_t = random(0,1);
    if (ran_r > 0.5){right = true;}else{right = false;}
    if (ran_t > 0.5){top = true;}else{top = false;}
    X = 500;
    Y = 300;
  }
  
  
  void move() {
    if (right == true) {X+=vitesse;} 
    else{X-=vitesse;}
    if (top == true){Y+=vitesse;}
    else{Y-=vitesse;}
}

  void verify(){
   if (Y < 10){top = true;}
   if (Y > 590){top = false;}
   if (X > Bar_p2.X-20 && Y > Bar_p2.Y-80 && Y < Bar_p2.Y+80 ){right = false; left = true;}
   if (X < Bar_p1.X+20 && Y > Bar_p1.Y-80 && Y < Bar_p1.Y+80){right = true; left = false;}
   if (X > 990){score_p1++; println("P1 : " + score_p1); this.ini();}
   if (X < 10){score_p2++;println("P2 : " + score_p2); this.ini();}
  }


}