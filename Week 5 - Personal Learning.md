# Slave to the Algorithm - Week 5

__*Personal learning and fractal exploration*__

With Karen away in Tokyo, I decided to spend the free day I had working away at coding challenges done by one of my new favourite youtubers, The Coding Train. David Shiffman is a wealth of knowledge, and somewhere I will definitely be visiting revisiting for information in regards to my project and further knowledge with processing.

![Gif of Fractal Trees](https://github.com/Dropboy/Slave-to-the-Algorithm/blob/Journal/Images%20and%20Resources/Week%205/The%20coding%20train.jpg)

My plan was to finish his playlist on fractal generation by the end of the week, and better understand what was behind these algorithms and methods of creating fractals. After going through the videos and trying to understand the systems better, I found that the space colonisation  algorithm or the recursive fractal trees would be the best for my 3D environment, this is due to both of these generations being more flexible and generating a more 3D look to them, especially the space colonisation example.

While I was watching the videos I tried my best to experiment in Processing itself with some of the easier projects David started with. For example, I wrote along with him for the original fractal tree tutorial, and made my own small changes to make sure I was understanding how the program worked and what each function was doing. During this tutorial one of the biggest functions David was teaching was the translate, pop, and push functions. The translate function moves the position of the canvas so that all the elements on the screen are shifted to the translation, for example, if a line were placed on the canvas at (200,200,300,300), and then the translate function was used for (20,0) the line that is drawn would then be translated 20 pixels to the right on the x axis. This will be very important to know for my processing sketch, as it will help positioning the different fauna and objects that I will make. Utilising the translation function along with the pop and push functions expands the capability of these functions as well. The pop and push functions essentially create a save point (pushMatrix) that the program knows to go back to when it is called (popMatrix). This could also be used when creating the positions of the fauna, or even the tree branch generation, as using both push and pop Matrixes, and the translate function is a method into generating recursive art.

```java

void draw() {
  stroke(255);
  line(200,200,300,300);
  translate(40,0);
  line(200,200,300,300);
  translate(-80,0);
  line(200,200,300,300);
}

```

<p align="center">
  <img width="500" height="500" src="https://github.com/Dropboy/Slave-to-the-Algorithm/blob/Journal/Images%20and%20Resources/Week%205/Line%20Translated.PNG">

This is an example of a diagonal line being translated 40 pixels to the right and 40 pixels to the left. The translate function has had to be changed to -80 instead of -40 as the canvas is still kept in it's previous spot and needs to be translated back further another 40 pixels, as -40 brings it back to the original canvas position.

```java

void draw() {
  stroke(255);
  line(200,200,300,300);  
  pushMatrix();
  translate(40,0);
  line(200,200,300,300);
  popMatrix();
  translate(-40,0);
  line(200,200,300,300);
}

```

This is a very basic example of push and pop matrixes being used to make something more simple within the code. I have placed a push function just after the first line, as this will be the "save" point I return to. I then translate the canvas to be where the second line will be and then the line is drawn. After this the matrix is popped back to the original canvas position, and then translated 40 pixels to the left, only then is the line drawn again. Due to the canvas being reset there is no reason to figure out yourself how to reset the position, making it easier to remember and how to orient your graphics.

```java

float angle = 45;
float branch_ratio = 0.67;

void setup() {
  size(1000,1000);

}

void draw() {
  background(70,100,180);
  stroke(255);
  pushMatrix();
  translate(width/2,height);
  branch(100);
  popMatrix();
  pushMatrix();
  translate((width/2)+250,height);
  branch(100);
  popMatrix();
  pushMatrix();
  translate((width/2)-250,height);
  branch(100);
  popMatrix();
}

void branch(float len) {
    line(0, 0, 0, -len);
    translate(0, -len);
    if (len > 4 ) {
      pushMatrix();
      rotate(angle);
      branch(len*0.67);
      popMatrix();
      pushMatrix();
      rotate(-angle);
      branch(len*0.67);
      popMatrix();
}
}
void mouseWheel(MouseEvent event){
   angle += event.getCount()/10.0;
}

```

Here you can see my use of translation and push and pop matrixes with some slight animation added to the fractal trees that David walked through in his "Fractal Tree" Challenge, which can be found here: https://www.youtube.com/watch?v=0jjeOYMjmDU&vl=en

![Gif of Fractal Trees](https://github.com/Dropboy/Slave-to-the-Algorithm/blob/Journal/Images%20and%20Resources/Week%205/Fractal%20Tree%20Gif.gif)
