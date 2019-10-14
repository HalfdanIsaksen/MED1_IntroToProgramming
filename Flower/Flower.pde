Ball b;

void setup() {
  size(600,400);
  b = new Ball();
}

void draw()
{
  background(#43AF76);
  b.move();
  b.display();
  b.edgeCollider();
}  

class Ball
{
 int r;
 float ballX;
 float ballY;
 float xSpeed;
 float ySpeed;
 float x;
 float y;
 Ball()
 {
   r = 60;
   x = width/2;
   y = height/2;
   xSpeed = 3;
   ySpeed = 3;
 }
 
 void move()
 {
  x = x + xSpeed;
  y = y + ySpeed;
 }
 void display()
 {
  fill(#FFA005);
  for (float i=0;i<PI*2;i+=2*PI/6) 
  {
    ballX=x + r*cos(i);
    ballY=y + r*sin(i);
    ellipse(ballX,ballY,r,r);
  }
  fill(20,0,100);
  ellipse(x,y,r*1.1,r*1.1);
 }
  void edgeCollider()
  {
   if(x > width || x < 0)
   {
     xSpeed = xSpeed * -1;
   }
   if(y > height || y < 0)
   {
     ySpeed = ySpeed * -1;
   }
  }
}
 
