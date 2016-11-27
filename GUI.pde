class GUI
{

  float x;
  float y;
  float data;
  char type;
  String name;
  String reading;

  
  void display()
  {

    strokeWeight(3);


  }
  void update()
  {
    if(frameCount%5==0)
    {  
        if(turbine.level==0)
        {
          temp +=random(-10,10);
          press +=random(-10,10);
        }
        if(turbine.level>=1)
        {
          temp +=5;
          press -=2;
        }
    }

  } 


}