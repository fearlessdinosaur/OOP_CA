class Turbine
{
  float x;
  float y;
  float ang;
  float radius;
  int j;
  int meltdown=135;
  Turbine(float theta, float rad)
  {  
    ang=theta;
    radius=rad;
  }
  void display()
  {  
    if(melt==true)
    {
      damage(meltdown);
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
    } else
    {
      fill(0);
    }
  }
}