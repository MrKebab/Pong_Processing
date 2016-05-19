class barre {
  int X, Y;
  char T_Up, T_Down;

  barre (int PosX, int PosY) {
    X = PosX;
    Y = PosY;
  }

  void Display() {
    rect(X, Y, 40, 160);
  }

  void Up() {
    if (Y > 80)Y-=10;
  }
  void Down() {
    if (Y < height-80) Y+=10;
  }
}
