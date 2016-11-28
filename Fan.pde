class Fan// class used to make the spinning section of the turbine
{
  float theta;
  float rad;
  float x;
  float y;
  float centx;
  float centy;
  boolean dam=false;
  boolean destroy=false;
  Fan(float centx,float centy,float rad)//fan constructor
  {
      this.centx=centx;
      this.centy=centy;
      this.rad=rad/8;
  }
   
  void display()
  { 
      //draws the spinning blades
      for(theta=0;theta<360;theta +=45)
      {
        x=centx+ rad * cos(radians(theta+j));
        y=centy+ rad * sin(radians(theta+j));
        line(centx,centy,x,y);
       
      }




    
    j+=2;




  }
  
  void broken()
  {   
      //draws stationary blades
      for(theta=0;theta<360;theta +=45)
      {
        x=centx+ rad * cos(radians(theta));
        y=centy+ rad * sin(radians(theta));
        line(centx,centy,x,y);
       
      }
    
  }
  

}