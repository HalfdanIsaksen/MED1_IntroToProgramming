Snake s;

void setup()
{
  size(750,750);
  s = new Snake(width/2, height/2 , 40);
}

void draw()
{
  background(#666A61);
  s.display();
  s.move();
}
