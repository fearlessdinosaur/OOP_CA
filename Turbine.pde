class Turbine
{
  float x;
  float y;
  float ang;
  float radius;
  int j;
  int meltdown=45;
  int level=0;
  int val;
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
        damage(meltdown+270);
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
    start.pressed();
    if(running==true)
     {
       meltCount++;
       println(meltCount);
       if(meltCount>1000)
       {
         level=1;
       }
       if(meltCount>5000)
       {
         level=2;
         val=90;
       }
       
       if(meltCount>10000)
       {
         level=3;
         val=180;
       }
       if(meltCount>15000)
       {
         level=4;
         val=270;
       }
     }
  }
}