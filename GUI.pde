class GUI//masterclass for all GUI objects
{

  float x;
  float y;
  float data;
  char type;
  String name;
  String reading;


  

  void update()
  {
    strokeWeight(3);
    if(frameCount%5==0)
    {  
      for (Turbine tur : turbines) 
      {
          if(tur.level==0)
          {
            //controls the variation of temp and press
           if(reset==true)
           {
             if(temp>1000)
             {
               temp -= 5;
             }
             if(press<1000)
             {
               press++;
             }
           }
           else
           {
             temp += (int)random(-3,3);
             press += (int)random(-1,1);
           }
           if(temp<=1000 && press<=1000)
           {
             reset=false;
           }

          }
          if(tur.level>=1)
          {
            if(temp<4000)
            {
              temp +=5;
            }
            if(press>=1)
            {
              press -=1;
            }
            if(wall.integ>0&&temp>3000)
            {
               wall.integ -= 0.5;
            }             
          }
      }    
    }

  } 


}