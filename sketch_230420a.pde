int unit = 40;
int count;
Module[] mods;


void setup()


{
size(1000,1000);
background(255);
int wideCount = width / unit;
  int highCount = height / unit;
  count = wideCount * highCount;
  mods = new Module[count];


  int index = 0;
  for (int y = 0; y < highCount; y++) {
    for (int x = 0; x < wideCount; x++) {
      mods[index++] = new Module(x*unit, y*unit, unit/2, unit/2, random(0.05, 0.8), unit);
    }
  }

}
void draw()
{
  
 
  
   for (Module mod : mods) {
    mod.update();
    mod.display();
  }

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

fill(0,0,0,255);
triangle(0, 370, 0, 600, 350, 500);

fill(204,102,0,255);
triangle(0, 390, 0, 580, 300, 500);

fill(255,102,255,255);
triangle(0, 400, 0, 540, 250, 500);

fill(255,255,0,255);
triangle(0, 420, 0, 520, 200, 500);

fill(255,0,255);
noStroke();
circle(30, 480, 50);

}

 
