class Gauge extends GUI
{
  
  Gauge(float x, float y,String name,float data)
  {
    this.x=x;
    this.y=y;
    this.data=data;
    this.name=name;
  }
  
  void display()
  {
      textAlign(CENTER,CENTER);
      textSize(15);
      fill(wall.colour);
      text(name+":"+df.format(data),x,y);
      println(temp);
      println(press);
  }
}