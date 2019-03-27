# Slave to the Algorithm
**Week 2**

*Designing a generative design machine and further Processing skills/Symphony of Failure*

For Week 2 we started the session with a more analogue challenge, use cardboard and other random objects Karen had brought us to create a "machine" that would generate its own designs. This machine was tasked with creating the designs through any other input than human interaction, which was the real challenge of this activity. I was away getting cardboard during the ideation of our machine however when I returned the team was already deep into the possible construction of our machine.

![Image of working on box](https://github.com/Dropboy/Slave-to-the-Algorithm/blob/Journal/Images%20and%20Resources/Week%202/Working%20on%20box.jpeg)

The initial idea was to use the vibrations of each of our mobile phones to make a box vibrate, so that it would use pens that would be attached to the bottom to draw onto a piece of butchers paper below it. This idea went through a couple of different prototypes, all unfortunately did not generate any design without some sort of human interaction. We hung the box from the rafters of the top of the ceiling, as well as hung the pens from the bottom of the box, in hopes the swing of the twine would help generate more movement from the vibration, hence having a bit of a crazier style to the generated design, however it effectively did nothing, the vibration of the phone motors was too weak and would not carry through the cardboard box. We also experimented with having the pens attached to the box without twine and directly stuck onto the bottom of it, but again because of the weak vibration there was no random movement. We then tried spinning the box around like you would do with a swing and hoped that the force of it unwinding would give it enough momentum to create some crazy drawings, however due to the friction of the pens stopping on the bumps and coarse butchers paper the pens would draw very faint lines.

![Image of box and team](https://github.com/Dropboy/Slave-to-the-Algorithm/blob/Journal/Images%20and%20Resources/Week%202/Image%20of%20Box%20and%20Us.jpg)

There were a couple improvements suggested by the class that were very insightful into our design, personally if I were to try it again there would be two major things I'd look for to improve it, one would be more of the vibration motors, whether this be actual mobile phones or just the motors placed into a box. Or having it's own force driving it as it spins around, for example putting it on some kind of turntable device that would constantly rotate the box.

![Image of Papers](https://github.com/Dropboy/Slave-to-the-Algorithm/blob/Journal/Images%20and%20Resources/Week%202/Image%20of%20Papers.png)

After our dip into analogue generative design, we retreated back to our code land of processing. This time however we were using processing in a more graphical sense, creating a small face out of the shapes we experimented with the week before, I used an ellipse for the face, eyes, and pupils. Working as well with strokes and their weight to give the face more emoji like shape. This was a fairly simple exercise in processing as it really was about the placement of objects, I did however struggle with the 6 points required with a triangle, and decided to do some further research at home into how to make the triangles easier to draw, and how to draw them in a continuous line as to appear as if the emoji had nice equally sized, sharp teeth. Here is the code for my emoji's face if you'd like to see him in your own processing sketch

```java

void setup(){
  size(600,600);
  background(153,219,255);
  stroke(18,127,229);
  fill(50);
}

void triangleSimple(float x, float y, float w, float h){
    // A wrapper for standard triangle() command.
    // triangleSimple has the bottom left corner as x,y (can be lower when -)
    triangle(x,y,
    x+w/2, y+h,
    x+w, y);
}

void draw(){
  fill(21,80,135);
  strokeWeight(25);
  ellipse(300,300,200,200);

  fill(255);
  strokeWeight(25);
  ellipse(250,250,100,100);
  ellipse(350,250,100,100);

  strokeWeight(4);
  fill(109,182,249);
  ellipse(250,250,30,30);
  ellipse(350,250,30,30);

  strokeWeight(0);
  fill(255);

  int i = 1;
  int x=220;
  while(i<=4){
    triangleSimple(x,330,40,40);
    x += 40;
    i++;
  }
}

```

After the class I had a look on the processing forums to see if anyone had asked about this before, lo and behold there was my exact question, "How to make placing triangles as easy as ellipses and rectangles". Nicely enough someone posted their own code of how to create perfectly equilateral triangle.

```java

void triangleSimple(float x, float y, float w, float h){
// A wrapper for standard triangle() command.
// triangleSimple has the bottom left corner as x,y (can be lower when -)
triangle(x,y,
x+w/2, y+h,
x+w, y);
}

```

<img align="centre" width="302" height="325" src="https://github.com/Dropboy/Slave-to-the-Algorithm/blob/Journal/Images%20and%20Resources/Week%202/Face%20Boy.PNG">

Unpacking this slightly, instead of giving the triangle six coordinates, we have changed it to 4 variables; x, y, w (width), and h (height). All of these variables can be float values so they are able to be decimal places, ensuring that the triangle will always be perfect all sides. The comments are saying that the triangle starts at the left most point (the point changes to the bottom or top depending on whether you are subtracting by the width or adding). After this we generate the triangle using our new variables, so x will be added to the width variable we give it, and then divided by 2, this gives an always perfect centre point of the top or bottom most point. It is then adding the height to the y so that it is more straight forward when picturing how large it will be. The third point is then calculated by simply adding the x to the width variable, and will have the same y value as the original point. This will obviously have to change depending if you want to have it on an angle, but I only needed them to be straight so didn't tinker further.

After generating a new method of simpler triangles, We then thought of a way that would be easier in creating multiple triangles along a line. This was simply done by putting our triangleSimple function into a while loop:

```java


int i = 1;{
int x=220;
while(i<=4){
  triangleSimple(x,330,40,40);
  x += 40;
  i++;
  }
}

```

Again slightly unpacking this, assigning 1 to the interval, this way it is always generating at least 1, we then define the x variable as it will always be starting from x = 220, but will need to add 40 pixels each new triangle. The loop then starts, saying that i must always be less than or equal to 4, this way it will always be running until it reaches it's maximum amount of triangles generated which we have chosen as 4. The while loop then runs triangleSimple, 3 of the variables are kept the same so that the size of the triangles never changes, but then under this line, the x variable is told to increment by 40 each time the while loop is run. After this the code tells the i interval to increase by 1 each time, eventually running to its max of 4.

Doing this after class learning was a lot of fun and really eye opening, it helped me understand a little more as to how I will create a lot of the constant generation of my project, and how I will have to do outside learning to expand my knowledge.
