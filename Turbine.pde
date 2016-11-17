class Turbine
{
  float x;
  float y;
  float ang;
  float radius;
  
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
  }
}