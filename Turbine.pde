class Turbine
{
  float x;
  float y;
  float ang;
  float radius;
  int j;
  int meltdown=135;
  int level;
  Turbine(float theta, float rad)
  {  
    ang=theta;
    radius=rad;
  }
  void display()
  {  
    fill(0);
    meltdown();
    if(level==1)
    { 
        damage(meltdown);
    }
    if(level==2)
    { 
        damage(meltdown);
        damage(meltdown+90);
    }
    if(level==3)
    { 
        damage(meltdown);
        damage(meltdown+90);
        damage(meltdown+180);
    }
    if(level==4)
    { 
        damage(meltdown);
        damage(meltdown+90);
        damage(meltdown+180);
        damage(45);
    }
    
    x=centx+(radius-5)*cos(radians(ang));
    y=centy+(radius-5)*sin(radians(ang));
    ellipse(x, y, radius/4, radius/4);

    for (fanTheta=0; fanTheta<=360; fanTheta=fanTheta+45)
    {
      fan=new Fan(fanTheta, turbine.radius/8);
      fan.display();
    }
  }

  void damage(float theta)
  {

    if (ang==theta)
    {
      fill(255, 0, 0);
    } 

  }
  void meltdown()
  {  
     if(frameCount>200)
     {
       level=1;
     }
     if(frameCount>400)
     {
       level=2;
     }
     
     if(frameCount>600)
     {
       level=3;
     }
     if(frameCount>800)
     {
       level=4;
     }
  }
}