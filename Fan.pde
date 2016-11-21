class Fan
{
  float theta;
  float rad;
  float x;
  float y;
  Fan(float ang,float radi)
  {
      theta=ang;
      rad=radi;
  }
   
  void display()
  {
    x=turbine.x+ rad * cos(radians(theta+j));
    y=turbine.y+ rad * sin(radians(theta+j));
    line(turbine.x,turbine.y,x,y);
    j += .2;
  }
  void damage()
  {
    fill(255,0,0);
  }
}