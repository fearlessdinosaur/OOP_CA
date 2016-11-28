# OOP_CA
HUD for OOP CA
-youtube Link: https://youtu.be/jgPm2xnk-8E

**How To use**:
 - by hovering over the status bars to the left you can see their current status (ie working or not)
 - by hovering over the core itself you can look at the current core integrity (originally set to 100%)
 - if you click within the meltdown test button in the bottom right corner the meltdown event will begin
 - this event will shut down the turbines one by one and increase the temperature while decreasing the pressure
 - to stop this process press the purge core button that appears in the bottom left corner
 - if integrity drops below 50% a warning is given and the system can no longer be salvaged
 - an evac warning will appear
 the program is now complete

**Basic Breakdown of each class**:
- the main is used to draw and call/initialise all other classes and their methods
- the Wall class draws the basic shape of the reactor
- the Turbine class draws the body of the turbine and calls the Fan
- the Fan class creates the turbine blades
- the GUI superclass which has 3 subclasses:
  - the Button class which draws the buttons
  - the status class which draws the status bars
  - the gauge class which draws the gauges which display temp and press
  

