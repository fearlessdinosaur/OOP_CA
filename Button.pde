class Button extends GUI
{
  float xSize;
  float ySize;
  boolean run;
 Button(float x, float y,String name,float xSize, float ySize)
 {
    this.x=x;
    this.y=y;
    this.xSize=xSize;
    this.ySize=ySize;
    this.name=name;
 }
 void display()
 {
   pressed();
   fill(0);
   textSize(36);
   textAlign(CENTER,CENTER);
   if(meltCount<=1000)
   {
     rect(x,y,xSize,ySize);
     fill(wall.colour);
     text(name,x+(xSize/2),y+(ySize/2));
   }
 }
 
 void pressed()
 {
      if( mouseX<=x+xSpacer*2&&mouseX>=x)
      {
        if(mouseY<=y+ySpacer*1&&mouseY>=y)
        {
          mouseClicked();
        }
      }
 }
 
}