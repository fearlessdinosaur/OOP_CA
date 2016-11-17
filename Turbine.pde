class Turbine
{
  float x;
  float y;
  float ang;
  float radius;
  int j;
  
  Turbine(float theta,float rad)
  {  
    ang=theta;
    radius=rad;
      
  }
  void display()
  {

    x=centx+(radius-5)*cos(radians(ang));
    y=centy+(radius-5)*sin(radians(ang));
    ellipse(x,y,radius/4,radius/4);
     for(fanTheta=0;fanTheta<=360;fanTheta=fanTheta+45)
     {
       fan=new Fan(fanTheta,35);
       fan.display();
     }
  }
}