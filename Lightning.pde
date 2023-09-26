int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;

void setup()
{
  size(600,600);
   background(128,128,128);
  strokeWeight(5);
  frameRate(50);
}
void draw()
{
  stroke(255,255,0);
  if (endY <= 600){
    endX = startX + ((int)((Math.random()*14)- 7));
    endY = startY + ((int)(Math.random()*20+2));
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
  }
}
void mousePressed(){
  endX = startX + ((int)((Math.random()*200)- 100));
  endY = startY + ((int)(Math.random()*20+2));
  line(startX,startY,endX,endY);
    startX = 150 + ((int)((Math.random()*601)-100));
    startY = 0;
}
