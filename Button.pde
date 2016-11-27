class Button extends GUI
{
 Button(float x, float y,String name,float data)
 {
    this.x=x;
    this.y=y;
    this.data=data;
    this.name=name;
 }
 void display()
 {
   rect(x,y,data,data);
 }
}