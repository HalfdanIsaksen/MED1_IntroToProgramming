class Object
{
  int r;
  float ballX;
  float ballY;
  float xSpeed;
  float ySpeed;
  float x;
  float y;
  boolean ball;
  color c = color(#140064);
  Object(int _r, float _x, float _y, float _xSpeed, float _ySpeed)
  {
    r = _r;
    x = _x;
    y = _y;
    xSpeed = _xSpeed;
    ySpeed = _ySpeed;
  }
  Object(int _r, float _x, float _y, float _xSpeed, float _ySpeed, boolean _ball)
  {
    r = _r;
    x = _x;
    y = _y;
    xSpeed = _xSpeed;
    ySpeed = _ySpeed;
    ball = _ball;
  }

  void move()
  {
    x = x + xSpeed;
    y = y + ySpeed;
  }
  void display()
  {
    if (ball == false)
    {
      fill(#FFA005);
      for (float i=0; i<PI*2; i+=2*PI/6) 
      {
        ballX=x + r*cos(i);
        ballY=y + r*sin(i);
        ellipse(ballX, ballY, r, r);
      }
    }
    fill(c);
    ellipse(x, y, r*1.1, r*1.1);
  }
  void edgeCollider()
  {
    if (x > width || x < 0)
    {
      xSpeed = xSpeed * -1;
    }
    if (y > height || y < 0)
    {
      ySpeed = ySpeed * -1;
    }
  }
}
