class Button extends GUI//subclass of GUI, used to draw buttons on screen
{
  float xSize;
  float ySize;
  boolean run;
 Button(float x, float y,String name,float xSize, float ySize)//button constructor
 {
    this.x=x;
    this.y=y;
    this.xSize=xSize;
    this.ySize=ySize;
    this.name=name;
 }
 void display()
 {
   // creates the major button design
   fill(0);
   textSize(xSize/17);
   textAlign(CENTER,CENTER);
   rect(x,y,xSize,ySize);
   fill(wall.colour);
   text(name,x+(xSize/2),y+(ySize/2));

 }
 
 
}