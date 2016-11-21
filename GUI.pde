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
  float alter;
  
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
      fill(0);
      textSize(36);
      textAlign(CENTER,CENTER);
      rect(x,y,xSpacer*2,ySpacer*1);
      fill(wall.colour);
      text(name,xSpacer*1.1,ySpacer*data);
      fill(0);
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