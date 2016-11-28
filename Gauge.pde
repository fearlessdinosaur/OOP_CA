class Gauge extends GUI//subclass of GUI class
{
  String symbol;
  Gauge(float x, float y,String name,float data,String symbol)
  {
    this.x=x;
    this.y=y;
    this.data=data;
    this.name=name;
    this.symbol=symbol;
  }
  
  void display()
  {  //draws gauges seen on right of screen
      textAlign(CENTER,CENTER);
      textSize(15);
      fill(wall.colour);
      text(name+":"+df.format(data)+symbol,x,y);//displays data
  }
}