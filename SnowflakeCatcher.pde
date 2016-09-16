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
  }
  void lookDown()
  {
    //your code here
    color below = get(myX, myY+8);
    if(myY<0 || myY>400 || below != color(0))
    {
      isMoving = false;
    }
    System.out.println(isMoving);


  }
  void erase()
  {
    //your code here
    fill(0);
    ellipse(myX, myY, 7, 7);
  }
  void move()
  {
    //your code here
    if(isMoving == true)
    {
      myY ++;
    }
  }
  void wrap()
  {
    //your code here
  }
}


