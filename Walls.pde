
class Walls
{
  float outerRad;
  float innerRad;
  float coreRad;
  color colour;
  float integ;
  Walls()
  {
    outerRad=width/3;
    innerRad= outerRad-20;
    coreRad=width/6;
    colour=color(100,200,255);
    integ=100;
  }
  
  void display()
  {  
          fill(colour);
          textSize(30);
        if(integ<50)
        {    
             fill(0);
             if(count<50)
            {
              fill(255,0,0);
            }
            if(count>65)
            {
              fill(0);
            }
          text("WARNING: Core Integrity below 50%",xSpacer*5,ySpacer);
          fill(colour);
        }
        
        textSize(14);
        
      if( mouseX<=centx+coreRad&&mouseX>=centx-coreRad)
      {
        if(mouseY<=centy+coreRad&&mouseY>=centy-coreRad)
        {
          text("Core Integrity: "+integ+"%",centx+coreRad,centy-coreRad);
        }
      }
     stroke(colour);
     strokeWeight(2);
     fill(0);
     ellipse(centx,centy,outerRad,outerRad);
     ellipse(centx,centy,innerRad,innerRad);
     ellipse(centx,centy,coreRad,coreRad);
  }
  
}