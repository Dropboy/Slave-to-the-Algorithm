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

This is the code block for the processing portion, a lot of this I'm still quite lost on, however I can understand that the background is being redrawn, and the image size is being changed dependent on the value that is displayed by println(serialIn).

  -Then used the values that the Arduino was able to generate to make a processing sketch that made an image bigger the further away you are from the image

  -Then altered it to be a circle that grew bigger and react to mouse movement rather than the sensor

-What is expected next week
  -What you have created so far
