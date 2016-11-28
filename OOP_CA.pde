/* Program to draw the heads up display for a reactor core.
  Author: David Fox (C15436172)
  gitName:fearlessdinosaur
  Date:27/11/2016
*/
import java.text.*;
Walls wall;
ArrayList<Turbine> turbines = new ArrayList<Turbine>();
ArrayList<Status> stats = new ArrayList<Status>();
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
  turbines.add(new Turbine(45,wall.outerRad/2));
  turbines.add(new Turbine(135,wall.outerRad/2));
  turbines.add(new Turbine(225,wall.outerRad/2));
  turbines.add(new Turbine(315,wall.outerRad/2));
  stats.add(new Status(width-(xSpacer*9.95),height-(ySpacer*9),"Fan 1",1.5));
  stats.add(new Status(width-(xSpacer*9.95),height-(ySpacer*7.5),"Fan 2",3.0));
  stats.add(new Status(width-(xSpacer*9.95),height-(ySpacer*6.0),"Fan 3",4.5));
  stats.add(new Status(width-(xSpacer*9.95),height-(ySpacer*4.5),"Fan 4",6.0));
  start= new Button(width-(xSpacer*2.5),height-ySpacer*2,"Run meltdown test",xSpacer*2,ySpacer);
  
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
   wall.display();

   gauge1.display();
   gauge2.display();
   gauge1.update();
   start.display();
   for (Turbine tur : turbines) 
   {
      tur.display();
   }
   for (Status stat : stats) 
   {
      stat.display();
   }
}

void mousePressed() 
{
      if( mouseX<=start.x+xSpacer*2&&mouseX>=start.x)
      {
        if(mouseY<=start.y+ySpacer*1&&mouseY>=start.y)
        {
            if(running==false)
            {
              running=true;
            }    
        }
      }

  
  
}