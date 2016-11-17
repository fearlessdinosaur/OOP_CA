/* Program to draw the heads up display for a reactor core.
  Author: David Fox (C15436172)
  gitName:fearlessdinosaur
  Date:16/11/2016
*/
import java.text.*;
Walls wall;
Turbine turbine;
Fan fan;
GUI gauge1;
GUI gauge2;
GUI Stat1;
GUI stat2;
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

void draw()
{ 
   background(0);
   gauge1= new GUI(width-(xSpacer),height-(ySpacer*9),"temp",1000,'g');
   wall.display();
   for(theta=45;theta<=360;theta=theta+90)
   {
     turbine=new Turbine(theta,wall.outerRad/2);
     println(theta);
     turbine.display();
   }
   gauge1.display();

}