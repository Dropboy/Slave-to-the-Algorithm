# Slave to the Algorithm - Week 9

__*Class TBD*__

With my tree ready and my brain ready for a bit of brutalising, I walked into this weeks slave class confident and excited. Karen greeted us with boxes of Arduino modules, boards, and the task of researching and finding the use of a randomly selected module. The first one I picked up was a temperature sensor, however I originally believed it to be a sound sensor. I immediately began trying to use this temperature sensor in a sound sensor arduino project, and with Karen's help quickly realised I had not properly googled my module.

After finding another sensor that looked a little similar to the one displayed in the clap switch projects, I again tried to make the LED glow through sound, however found again that the module was not used in this project. Finally the third time, Karen handed me a larger looking sound sensor, which was practically identical to the modules in the tutorials. Once I had finally found the right module, I then started to put together the breadboard for this project. I quickly realised that there was little use using a breadboard, and that it was there to allow some space within the wiring, however I wasn't fussed about looks, and instead directly wired the sound sensor to the analogue output on the arduino, and the ground and power directly to the arduino as well. With the sensor being powered, it was now just a problem of getting the sensor to output it's values, and use these values to turn off and on a LED, depending if there had been a loud enough sound.

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

  -Got it to work but only worked off of tapping, the microphone seemed to be too sensitive, also played with sensitivity nozzle on the top
-Helped Emily with her sound, was not able to get it to work but it ended up being a problem with syntax
