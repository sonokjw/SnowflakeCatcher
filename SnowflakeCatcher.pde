Snowflake [] snow;
void setup()
{
  //your code here
  size(600, 400);
  snow = new Snowflake[1000];
  for(int i=0; i< snow.length; i++)
    snow[i] = new Snowflake();
}
void draw()
{
  //your code here
  background(0, 0, 51);
  for(int i=0; i < snow.length; i++)
  {
    snow[i].erase();
    snow[i].show();
    snow[i].lookDown();
    snow[i].move();
    snow[i].wrap();
  }
}
void mouseDragged()
{
  //your code here
  noStroke();
  fill(255, 255, 0);
  rect(mouseX+5, mouseY+5, 10, 10, 10);
}

class Snowflake
{
  //class member variable declarations
  int myX, myY;
  boolean isMoving;
  Snowflake()
  {
    //class member variable initializations
    myX = (int)(Math.random()*601);
    myY = (int)(Math.random()*401);
    isMoving = true;
  }
  void show()
  {
    //your code here
    noStroke();
    fill(255);
    ellipse(myX, myY, 5, 5);
  }
  void lookDown()
  {
    //your code here
    if(get(myX, myY+7) == color(255, 255, 0))
    {
      isMoving = false;
    }


  }
  void erase()
  {
    //your code here
  }
  void move()
  {
    //your code here
    if(isMoving == true)
    {
      myY +=2;
    }
  }
  void wrap()
  {
    //your code here
    if(myY > 405)
    {
      myY = 0;
      myY += 2;
    }
  }
}


