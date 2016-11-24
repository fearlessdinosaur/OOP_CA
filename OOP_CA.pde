/* Program to draw the heads up display for a reactor core.
  Author: David Fox (C15436172)
  gitName:fearlessdinosaur
  Date:21/11/2016
*/
import java.text.*;
Walls wall;
Turbine turbine;
Fan fan;
GUI gauge1;
GUI gauge2;
GUI stat1;
GUI stat2;
GUI stat3;
GUI stat4;
void setup()
{
  fullScreen();
  centx= width/2;
  centy= height/2;
  wall=new Walls();
   xSpacer=width/10;
   ySpacer=height/10;
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
void draw()
{ 
   background(0);
   gauge1= new GUI(width-(xSpacer),height-(ySpacer*9),"temp",temp,'g');
   gauge2= new GUI(width-(xSpacer),height-((ySpacer*9)-20),"Pressure",press,'g');
   stat1= new GUI(width-(xSpacer*9.95),height-(ySpacer*9),"Fan 1",1.5,'s');
   stat2= new GUI(width-(xSpacer*9.95),height-(ySpacer*7.5),"Fan 2",3.0,'s');
   stat3= new GUI(width-(xSpacer*9.95),height-(ySpacer*6.0),"Fan 3",4.5,'s');
   stat4= new GUI(width-(xSpacer*9.95),height-(ySpacer*4.5),"Fan 4",6.0,'s');
   wall.display();
   for(theta=45;theta<=360;theta=theta+90)
   {
     turbine=new Turbine(theta,wall.outerRad/2);
     println(theta);
     turbine.display();
   }
   gauge1.display();
   gauge2.display();
   stat1.display();
   stat2.display();
   stat3.display();
   stat4.display();
   gauge1.update();
}