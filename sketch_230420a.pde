

Flag h1 = new Flag(20, 2.0); 
Flag h2 = new Flag(50, 2.5); 
void setup()


{
size(1000,1000);
background(255);
stroke(RGB);
strokeWeight(4);
strokeCap(SQUARE);
frameRate(30);



}
void draw()
{
  
  h1.update(); 
  h2.update();
  
  
  
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
//


fill(255,0,0,255);
rect(0,350,500,40);
  

fill(247,255,0,255);
rect(0,400,500,40);

fill(0,255,26,255);
rect(0,450,500,40);

fill(0,255,255,255);
rect(0,500,500,40);

fill(0,0,255,255);
rect(0,550,500,40);

fill(204,0,204,255);
rect(0,600,500,40);

}

 
class Flag{ 
  float ypos, speed; 
  Flag (float y, float s) {  
    ypos = y; 
    speed = s; 
  } 
  
  void update() { 
    ypos += speed; 
    if (ypos > height) { 
      ypos = 0; 
    } fill(random(255),random(255),random(255));
     line(0, ypos, width, ypos); 
     line(0, ypos, width, ypos); 
  }
}
