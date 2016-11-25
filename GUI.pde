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
  GUI(float x, float y,String name,float data, char type)
  {
    this.x=x;
    this.y=y;
    this.data=data;
    this.type=type;
    this.name=name;
    reading= "working correctly";
  }
  
  void display()
  {
    strokeWeight(3);
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
      check();
      textSize(36);
      textAlign(CENTER,CENTER);
      rect(x,y,xSpacer*2,ySpacer*1);
      fill(wall.colour);
      text(name,xSpacer*1.1,ySpacer*data);
      fill(0);
      if( mouseX<=x+xSpacer*2&&mouseX>=x)
      {
        if(mouseY<=y+ySpacer*1&&mouseY>=y)
        {
          textSize(10);
          textAlign(CENTER,RIGHT);
          fill(255);
          text("status:"+reading,(x+xSpacer*2)+80,y);
          println("placeholder");
        }
      }
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

void check()
{
    if(turbine.level>=1)
    {
      if(data==1.5*1)
      {
        fill(255,0,0);
        reading="turbine Damaged";
      }
    }
    
    if(turbine.level>=2)
    {
      if(data==1.5*2)
      {
        fill(255,0,0);
        reading="turbine Damaged";
      }
    }
   
    if(turbine.level>=3)
    {
      if(data==1.5*3)
      {
        fill(255,0,0);
        reading="turbine Damaged";
      }
    }
    if(turbine.level>=4)
    {
      if(data==1.5*4)
      {
        fill(255,0,0);
        reading="turbine Damaged";
      }
    }    
}

}