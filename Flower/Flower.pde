Object o;
Object o2;
int r = 60;
void setup() {
  size(600, 400);
  o = new Object(r, width/2, height/2, 3, 3);
  o2 = new Object(r, width/2, height/2, 3, 3, true);
}

void draw()
{
  background(#43AF76);
  o.move();
  o.display();
  o.edgeCollider();
  //o2.move();
  o2.display();
  o2.edgeCollider();
  collision();
}  
void mousePressed()
{
  o2.x = mouseX;
  o2.y = mouseY;
}
void collision()
{
 if(dist(o.x,o.y,o2.x,o2.y) < r*2)
 {
   o2.c = #17FF08;
 }else{
   o2.c = #140064;
 }
}
