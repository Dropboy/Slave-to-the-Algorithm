# Slave to the Algorithm - Week 9

__*Arduino Boards & Processing Sketches*__

With my tree ready and my brain ready for a bit of brutalising, I walked into this weeks slave class confident and excited. Karen greeted us with boxes of Arduino modules, boards, and the task of researching and finding the use of a randomly selected module. The first one I picked up was a temperature sensor, however I originally believed it to be a sound sensor. I immediately began trying to use this temperature sensor in a sound sensor arduino project, and with Karen's help quickly realised I had not properly googled my module.

After finding another sensor that looked a little similar to the one displayed in the clap switch projects, I again tried to make the LED glow through sound, however found again that the module was not used in this project. Finally the third time, Karen handed me a larger looking sound sensor, which was practically identical to the modules in the tutorials. Once I had finally found the right module, I then started to put together the breadboard for this project. I quickly realised that there was little use using a breadboard, and that it was there to allow some space within the wiring, however I wasn't fussed about looks, and instead directly wired the sound sensor to the analogue output on the arduino, and the ground and power directly to the arduino as well. With the sensor being powered, it was now just a problem of getting the sensor to output it's values, and use these values to turn off and on a LED, depending if there had been a loud enough sound.


![Pic of Sensor and Laptop](https://github.com/Dropboy/Slave-to-the-Algorithm/blob/Journal/Images%20and%20Resources/Week%2009/Laptop%20and%20sound%20cropped.jpg)

The first couple of times the light would flicker a low light, then change to a bright light and stay solid. At this point I was very lost as to what I was doing, I had only experimented with Arduino in the weeks prior, so I was still very fresh on the correct wiring and coding practice, however following the tutorials I was able to gain a base knowledge on where and how to wire the sensor, as well as how the arduino IDE and language worked. I went through several clap switch tutorials, learning the different coding methods to activate a LED through sound: Here is the code I mainly ended up using, and in the end was able to get a LED to switch on tap of the sensor itself.

```c

int soundSensor=2;
int LED=13;
boolean LEDStatus=false;


void setup() {
 Serial.begin(9600);
 pinMode(soundSensor,INPUT);
 pinMode(LED,OUTPUT);

}

void loop() {
  Serial.println(SensorValue);
  int SensorData=digitalRead(soundSensor);
  if(SensorData==1){

    if(LEDStatus==false){
        LEDStatus=true;
        digitalWrite(LED,HIGH);
    }
    else{
        LEDStatus=false;
        digitalWrite(LED,LOW);
    }
  }
 }

 ```

After getting it to work from tapping, I tried to understand if I could make it activate on clap like I wanted, or if the the sensor may have been busted or too sensitive. Playing with the sensitivity screw on the top of sensor I was able to get the outputted sound values to decrease until it was under 100, however I could not get it any lower and the values seeemed to increase back to their original 500-600 value range without screwing the sensitivity screw the other way. By the end of the class the sensor was again not lighting a LED on any sound, however I did learn a lot about the importance of wiring, doing this exercise also gave me more insight into coding in a specific order and making sure I was paying attention to syntax.

![Pic of bags of sensors](https://github.com/Dropboy/Slave-to-the-Algorithm/blob/Journal/Images%20and%20Resources/Week%2009/Sensors%20Galore.jpg)

During the class Karen reminded us that if you had hit a roadblock, to start talking to some of the people in class about what you were doing and what wasn't working, as someone might have run into that problem before and already knows the solution. I wasn't really at a point where my code for my project wasn't working, so I decided to see if my limited knowledge could help anyone in class. Emily was having quite a few problems with her sound not playing at all from her copied code, so I decided to have a look if it was something simple like a syntax error or possibly a logical error within the code. Emily is using javascript rather than java, which made helping her slightly harder as the syntax is slightly different, however it seemed like the majority of the code was correct and should be working. After thoroughly going over each part and trying to understand where the error would be, we had to call over Karen to help. After Karen went and experimented with the code herself, she came back with the very simple solution of adding "data/" to the path of the sound file. These are the problems I will need to pay attention to and make sure to look out for in the future, as they are small but will entirely ruin my code if I let them in.

At the end of class I had a chance to show Karen where I had gotten up to with my tree code so far, she was very happy with the progress so far, and asked me again to keep going and improve the code. The next additions will be pruning the tree, adding more than one tree, having a tree spawn on a different object such as a table, and have the trees spawn on the press of a button. This week will include a lot of talks with my computer science friend, as well as a decent amount of googling and github utilising.
