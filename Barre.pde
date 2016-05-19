class barre {
  int X, Y;
  char T_Up, T_Down;

  barre (int PosX, int PosY, char key_up, char key_down) {
    X = PosX;
    Y = PosY;
    T_Up = key_up;
    T_Down = key_down;
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