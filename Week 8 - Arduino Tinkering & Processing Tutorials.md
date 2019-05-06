# Slave to the Algorithm - Week 8

__*Arduino Tinkering & Processing Tutorials*__

Another week of learning new content, this week we had a brief tutorial on all things Arduino. We were given a breadboard, some cables and an ultrasonic sensor, and tasked with following Karen in creating a processing sketch that was able to utilise the ultrasonic sensor. We began by learning the different beginner steps of Arduino, where to plug certain cables, how it should be wired etc. After setting up the breadboard we began following a tutorial on how to program the ultrasonic sensor so that it could read how far away a solid object was from it. After setting up the functionality and having a distance measurer, we then transferred into processing, where again we followed an Arduino forums tutorial that guided us through the coding process.

![Ultrasonic Sensor](https://github.com/Dropboy/Slave-to-the-Algorithm/blob/Journal/Images%20and%20Resources/Week%208/Ultrasonic%20Sensor.jpg)

```java

import processing.serial.*; //importing serial lib
PImage diy; //declaring
Serial arduino;
int serialIn;
int val=0;

void setup()
{
  size(800,800,P2D);
  printArray(Serial.list());
  arduino = new Serial(this,Serial.list()[3],115200);
  diy= loadImage("diy.png");
  imageMode(CENTER);
  diy.resize(500,500);

}
void draw()
{
  background(0);
  image(diy,width/2,height/2,val,val);


  if(arduino.available()>0)
  {
    serialIn=arduino.read();
    println(serialIn);
  }
  val=int(map(serialIn,0,50,100,500));
}

```

This is the code block for the processing portion, a lot of this I'm still quite lost on, however I can understand that the background is being redrawn, and the image size is being changed dependent on the value that is displayed by println(serialIn). Now we are able to use the values that are generated to change the size of the image, the closer you get to the ultrasonic sensor the larger the image will become, the further away you get the smaller the image gets. The use of this exercise was to show that there are a lot of resources online that we can use and modify to fit our project. It also helped display how easy it is to incorporate Arduino into projects on a basic level, and the potential to experiment with different mediums of electronics with our projects. I was able to modify the processing code for the image resizing, to make an ellipse resize dependant on where the mouse cursor is on the screen, here is the code for that:

```java

void setup() {
  background(255);
  fullScreen();
  fill(0);
  stroke(255,0,0);
  strokeWeight(2);
  frameRate(60);
  ellipseMode(CENTER);

}

void draw() {
  int diam = abs(2*mouseY - width);
  int weirddiam = abs(2*mouseX - width);
  print(mouseX,mouseY);
  background(-1);
  ellipse(width>>1,height>>1, diam, weirddiam);
}

void mouseMoved() {
  redraw();

}

```

I removed the majority of the original functions created for the ultrasonic sensor, and replaced them with functions that change the size of the ellipse dependent on the X and Y mouse cursor. It generates an interesting effect to the ellipse, manipulating and squashing it into various different circle shapes. This could be utilised in a couple of different ways, there could be physics in my project that when the mouse moves, it effects and manipulates how the trees and other fauna are displayed.

![Gif of circle being manipulated](https://github.com/Dropboy/Slave-to-the-Algorithm/blob/Journal/Images%20and%20Resources/Week%208/Ellipse%20changing.gif)

This week Karen gave me a goal to accomplish over the week, to get to a stage where I have at least one "tree" object being grown off of a platform. I have been focusing on really learning syntax and how the coding process actually works, so progress on my project has been stopped somewhat. Being told that I need to bring my prototype up to spec with what I am learning was a worrying, but needed warning. I'm going to have to start kicking up the rate at which I write my own code, or look and hack through others. The next couple of weeks will be purely focused on my project and how it is going to be made. There will be a lot of dead ends and problems to face but overcoming them or bringing them to people that can help will be rewarding and a good lesson to learn.
