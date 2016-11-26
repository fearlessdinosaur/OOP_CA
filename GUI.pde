class GUI
{
  char button= 'b';
  char gauge = 'g';
  char status = 's';
  float x;
  float y;
  float data;
  char type;
  String name;
  String reading;

  
  void display()
  {

    strokeWeight(3);
    if(type==button)
    {
      
    }

  }
  void update()
  {
    if(frameCount%5==0)
    {
        temp +=random(-10,10);
        press +=random(-10,10);
    }

  } 


}