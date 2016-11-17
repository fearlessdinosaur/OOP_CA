class GUI
{
  char button= 'b';
  char gauge = 'g';
  char status = 's';
  float x;
  float y;
  String data;
  char type;
  
  GUI(float x, float y, String data, char type)
  {
    this.x=x;
    this.y=y;
    this.data=data;
    this.type=type;
  }
  
  void display()
  {
    if(type==button)
    {
      
    }
    if(type==gauge)
    {
      
    }
    if(type==status)
    {
      
    }
  }
}