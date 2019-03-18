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
