# Slave to the Algorithm
**Week 1**

*Introduction to Processing and generative/parametric design*

With the first week of University starting, we dove right into some coding with the IDE, Processing. Processing being a lightweight open-source graphical library, I found it easier than some of the other IDE's I've ever started with, fairly good UX and very simple to follow. Through the class we explored various basic graphic commands and the syntax that we would have to strictly adhere to.

We started by experimenting with lines, other shapes and their strokes, and how you could visualise them with the commands: Line, Ellipse, Rect, and Stroke. Depending on the position as well based off of their coordinates (x1,x2,y1,y2, the x being the two x coordinates it will span to, and same with the y)

This is the code for a simple line:

size(3000,2000);

line(0,0,3000,2000);

I have changed the size of the "artboard" to be quite large as my laptop screen has a higher resolution than most. The line spans from the top left of the canvas to the bottom right, if the size function were to change to (1920,1080) for example the line coordinates would then have to change to (1920,1080) as the line coordinates are tied to the canvas size. This was a major confusion point for me at first, as working with numbers isn't my strong suit and I had trouble visualising a grid that wasn't there.

![Image of Line](https://github.com/Dropboy/Slave-to-the-Algorithm/blob/Journal/Images%20and%20Resources/Week%201/Line.png)

After making a simple line we then began experimenting with changing colours when a key is being pressed, as well as ellipses being created when the mouse cursor is moved. This generated a very interesting yet crazy canvas with lots of colours and ellipses.

![Giffy Boi](https://github.com/Dropboy/Slave-to-the-Algorithm/blob/Journal/Images%20and%20Resources/Week%201/Gif%20of%20Canvas.gif)

Here is the code for generating different ellipses of random colours, and being able to change the colour of the background through any key press:

```java

//Initial setup of the integers and size of the artboard/colour, as well as the stroke colour for the whole sketch

int r,g,b,w;

void setup (){

fullScreen();
  background(0);
  stroke(255,0,0);
}

//Drawing of the ellipses when the mouse cursor is moved, as well when any of the mouse buttons are pressed the ellipse will become white
void draw(){
  if(mousePressed) {
  fill (mouseX/2,mouseY/2,(mouseX+mouseY)/4);
}
else {
  fill (int(random(256)),int(random(256)),int(random(256)));
}
ellipse (mouseX,mouseY,100,100);

}
//This part allows the background to be changed to a random colour when any key on the keyboard is pressed
void keyPressed(){
  r=int(random(256));
  g=int(random(256));
  b=int(random(256));
  w=int(random(256));
  background (r,g,b);
  stroke(w);
}

```
For my first session with processing I felt a little confused, but also confident that I will be able to pickup some of the more tedious syntax. The language while simple compared to others, still has its own level of depth and consideration which I will have to learn and practice with.
