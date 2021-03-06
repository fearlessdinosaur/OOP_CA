class Status extends GUI// subclass of gui class
{
  Status(float x, float y,String name,float data)
  {
    this.x=x;
    this.y=y;
    this.data=data;
    this.name=name;
    reading="working correctly";//sets initial turbine status
  }
  
  void display()
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
          textSize(14);
          textAlign(CENTER,RIGHT);
          fill(wall.colour);
          text("status:"+reading,(x+xSpacer*1.9)+100,y);//displays turbine status
        }
      }
  }
  
  void check()//causes status bars to flash
{   
   for (Turbine tur : turbines)
   {
    if(tur.level>=1)
    {
        if(data==1.5)
        {
            if(count<50)
            {  
              fill(255,0,0);
            }
            if(count>75)
            {
              fill(0);
              count=0;
            }
            reading="Overheated";
        }
      }
      
      if(tur.level>=2)
      {
        if(data==1.5*2)
        {
            if(count<50)
            {  
              fill(255,0,0);
            }
            if(count>75)
            {
              fill(0);
              count=0;
            }
            reading="Overheated";
        }
      }
     
      if(tur.level>=3)
      {
        if(data==1.5*3)
        {
            if(count<50)
            {  
              fill(255,0,0);
            }
            if(count>75)
            {
              fill(0);
              count=0;
            }
            reading="Overheated";
        }
      }
      if(tur.level>=4)
      {
        if(data==1.5*4)
        {
            if(count<50)
            {  
              fill(255,0,0);
              rect(centx-(halfScreenX/3),centy-50,2*(halfScreenX/3),200);
              fill(0);
              textSize(14);
              //displays error message+evac notice
              text("Catastrophic Turbine Failure. Core unsalvagable, please evacuate",centx,centy+50);
              fill(255,0,0);
            }
            if(count>75)
            {
              fill(0);
              count=0;
            }
            reading="Overheated";          
        }
  
  
      }
   }
}
}