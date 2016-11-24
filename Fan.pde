class Fan
{
  float theta;
  float rad;
  float x;
  float y;
  boolean dam=false;
  Fan(float ang,float radi)
  {
      theta=ang;
      rad=radi;
  }
   
  void display()
  {
      if(turbine.ang==turbine.meltdown)
      {
      x=turbine.x+ rad * cos(radians(theta));
      y=turbine.y+ rad * sin(radians(theta));
      line(turbine.x,turbine.y,x,y);
      j += .2;
      }
      else
      {
        x=turbine.x+ rad * cos(radians(theta+j));
        y=turbine.y+ rad * sin(radians(theta+j));
        line(turbine.x,turbine.y,x,y);
        j += .2;
      }

  }
  

}