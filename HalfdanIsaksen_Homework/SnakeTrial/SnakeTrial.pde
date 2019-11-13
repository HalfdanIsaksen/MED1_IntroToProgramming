Snake s;
Snake s1;
void setup()
{
  size(750,750);
  s = new Snake(width/2, height/2 , 40, true, 50);
  s1 = new Snake(width/2, height/2 , 20);
}

void draw()
{
  background(#666A61);
  s.display();
  s.move();
  s1.display();
  edgeCollider();
}

void edgeCollider()
{
  if(dist(s.x,s.y,s1.x,s1.y) < s.r)
  {
    s1.x = int(random(width));
    s1.y = int(random(height));
    s.hSize ++;
    print(" "+s.hSize);
    
  }
}
