/* Program to draw the heads up display for a reactor core.
  Author: David Fox (C15436172)
  gitName:fearlessdinosaur
  Date:16/11/2016
*/
import java.text.*;
Walls wall;
Turbine turbine;
void setup()
{
  fullScreen();
  centx= width/2;
  centy= height/2;
  wall=new Walls();
}
float centx;
float centy;
float theta;
DecimalFormat df = new DecimalFormat("0000.0");

void draw()
{ 
   background(0);
   wall.display();
   
   for(theta=45;theta<360;theta=theta+90);
   {
     
   }
}