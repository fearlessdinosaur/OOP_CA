/* Program to draw the heads up display for a reactor core.
  Author: David Fox (C15436172)
  gitName:fearlessdinosaur
  Date:27/11/2016
*/
import java.text.*;
Walls wall;
Turbine turbine;
Fan fan;
Gauge gauge1;
Gauge gauge2;
Status stat1;
Status stat2;
Status stat3;
Status stat4;
Button start;
void setup()
{
  fullScreen();
  centx= width/2;
  centy= height/2;
  wall=new Walls();
  xSpacer=width/10;
  ySpacer=height/10;
  halfScreenX=width-width/2;
  halfScreenY=height-height/2;
}
DecimalFormat df = new DecimalFormat("0000.0");
float centx;
float centy;
float theta;
float fanTheta;
float j;
float xSpacer;
float ySpacer;
float temp=1000;
float press=400;
int count;
int meltCount;
float halfScreenX;
float halfScreenY;
boolean running;
void draw()
{ 
  count++;
   background(0);
   gauge1= new Gauge(width-(xSpacer),height-(ySpacer*9),"temp",temp);
   gauge2= new Gauge(width-(xSpacer),height-((ySpacer*9)-20),"Pressure",press);
   stat1= new Status(width-(xSpacer*9.95),height-(ySpacer*9),"Fan 1",1.5);
   stat2= new Status(width-(xSpacer*9.95),height-(ySpacer*7.5),"Fan 2",3.0);
   stat3= new Status(width-(xSpacer*9.95),height-(ySpacer*6.0),"Fan 3",4.5);
   stat4= new Status(width-(xSpacer*9.95),height-(ySpacer*4.5),"Fan 4",6.0);
   start= new Button(width-(xSpacer*2.5),height-ySpacer*2,"Run meltdown test",xSpacer*2,ySpacer);
   wall.display();
   for(theta=45;theta<=360;theta=theta+90)
   {
     turbine=new Turbine(theta,wall.outerRad/2);
     turbine.display();
   }
   gauge1.display();
   gauge2.display();
   stat1.display();
   stat2.display();
   stat3.display();
   stat4.display();
   gauge1.update();
   start.display();
}

void mousePressed() 
{
  if(running==false)
  {
    running=true;
  }
  
  
}