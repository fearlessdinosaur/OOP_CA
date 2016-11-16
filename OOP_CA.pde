/* Program to draw the heads up display for a reactor core.
  Author: David Fox (C15436172)
  gitName:fearlessdinosaur
  Date:16/11/2016
*/
import java.text.*;
Walls wall;
void setup()
{
  fullScreen();
  centx= width/2;
  centy= height/2;
  wall=new Walls();
}
float centx;
float centy;
DecimalFormat df = new DecimalFormat("0000.0");

void draw()
{
   wall.display();
}