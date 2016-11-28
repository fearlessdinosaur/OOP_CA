class Turbine
{
  ArrayList<Fan> fans = new ArrayList<Fan>();
  float x;
  float y;
  float ang;
  float radius;
  int j;
  int meltdown=45;
  int level=0;
  int val;
  boolean dam;

  Turbine(float theta, float rad)
  {  
    ang=theta;
    radius=rad;
    x=centx+(radius-5)*cos(radians(ang));
    y=centy+(radius-5)*sin(radians(ang));
    dam=false;
    fans.add(new Fan(x,y,radius));
  }
  void display()
  {      
    fill(0);
    meltdown();
    if(level==1)
    { 
        damage(meltdown);
        Turbine turb = turbines.get(0);
        turb.dam=true;

    }
    if(level==2)
    { 
        damage(meltdown);
        damage(meltdown+90);          
        Turbine turb = turbines.get(1);
        turb.dam=true;

    }
    if(level==3)
    { 
        damage(meltdown);
        damage(meltdown+90);
        damage(meltdown+180);
        Turbine turb = turbines.get(2);
        turb.dam=true;
    
    }
    if(level==4)
    { 
        damage(meltdown);
        damage(meltdown+90);
        damage(meltdown+180);
        damage(meltdown+270);
        Turbine turb = turbines.get(3);
        turb.dam=true;
    }
    
    ellipse(x, y, radius/4, radius/4);
    
    for (Fan fan : fans) 
   {  
      if(dam==false)
      {
        fan.display();
      }
      else
      {
        fan.broken();
      }
      
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

    if(running==true)
     {

       meltCount++;
       if(meltCount>=1000)
       {
         level=1;
       }
       if(temp>=2000)
       {
         level=2;
         val=90;
       }
       
       if(temp>=3000)
       {
         level=3;
         val=180;
       }
       if(temp>=4000)
       {
         level=4;
         val=270;
       }
     }
  }
}