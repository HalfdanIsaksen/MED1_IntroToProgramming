class Snake
{
  int x;
  int y;
  int r;
  int hSize;
  boolean snake;
  //create an arraylist that contains a vector
  ArrayList<PVector> history;

  Snake(int _x, int _y, int _r, boolean _snake, int _hSize)
  {
    x = _x;
    y = _y;
    r = _r;
    hSize = _hSize;
    snake = _snake;
    //asign a new arraylist with vector
    history = new ArrayList<PVector>();
  }
  Snake(int _x, int _y, int _r)
  {
    x = _x;
    y = _y;
    r = _r;
  }

  void display()
  {
    noStroke();
    if(snake != true)
    {
      fill(#FC0A0A);
    }
    ellipse(x, y, r, r);
    //create a trail of ellipses, wtih as many ellipses as the size of the arraylist
    //where they get smaller and smaller for
    if (snake == true)
    {
      for (int i = 0; i < history.size(); i++)
      {
        PVector pos = history.get(i);
        fill(0, i*5);
        ellipse(pos.x, pos.y, i, i);
      }
    }
  }

  void move()
  {
    //get the snake to follow the mouse
    x = mouseX;
    y = mouseY;
    //create a vector from our x and y position
    PVector v = new PVector(x, y);
    //add that vector to our arraylist of vectors
    history.add(v);
    //if our arraylist has more elements than 50, remove that last element to be asigned
    if (history.size() > hSize)
    {
      history.remove(0);
    }
  }
}
/*

 
 
 
 */
