class Gauge extends GUI
{
  Gauge(float x, float y,String name,float data, char type)
  {
    this.x=x;
    this.y=y;
    this.data=data;
    this.type=type;
    this.name=name;
  }
  
  void display()
  {
      textSize(15);
      fill(wall.colour);
      text(name+":"+data,x,y);
  }
}