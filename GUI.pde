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
  
  GUI(float x, float y,String name,float data, char type)
  {
    this.x=x;
    this.y=y;
    this.data=data;
    this.type=type;
    this.name=name;
  }
  
  void display()
  {
    if(type==button)
    {
      
    }
    if(type==gauge)
    {
      textSize(15);
      fill(wall.colour);
      text(name+":"+data,x,y);
    }
    if(type==status)
    {
      
    }
  }
}