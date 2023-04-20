class Module {
  int xOffset;
  int yOffset;
  float x, y;
  int unit;
  int xDirection = 1;
  int yDirection = 1;
  float speed; 
  
  // Contructor
  Module(int xOffsetTemp, int yOffsetTemp, int xTemp, int yTemp, float speedTemp, int tempUnit) {
    xOffset = xOffsetTemp;
    yOffset = yOffsetTemp;
    x = xTemp;
    y = yTemp;
    speed = speedTemp;
    unit = tempUnit;
  }
  
  // Custom method for updating the variables
  void update() {
    x = x + (speed * xDirection);
    if (x >= unit || x <= 0) {
      xDirection *= -1;
      x = x + (1 * xDirection);
      y = y + (1 * yDirection);
    }
    if (y >= unit || y <= 0) {
      yDirection *= -1;
      y = y + (1 * yDirection);
    }
  }
  
  // Custom method for drawing the object
  void display() {
  
fill(255,0,0,255);
rect(0,20,500,40);
    
fill(247,255,0,255);
rect(0,50,500,40);

fill(0,255,26,255);
rect(0,100,500,40);

fill(0,255,255,255);
rect(0,150,500,40);

fill(0,0,255,255);
rect(0,200,500,40);

fill(204,0,204,255);
rect(0,250,500,40);

fill(0,0,0,255);
triangle(0, 25, 0, 250, 300, 150);

fill(204,102,0,255);
triangle(0, 40, 0, 230, 250, 150);

fill(255,102,255,255);
triangle(0, 55, 0, 200, 200, 150);

fill(255,255,0,255);
triangle(0, 70, 0, 180, 150, 150);

fill(255,0,255);
noStroke();
circle(30, 125, 50);
  }
}
