# Slave to the Algorithm - Week 11

__*Make a Statement!*__

At the start of the lesson we began by filling out our make a statement sheets. This make a statement sheet will help us in a couple weeks when working on our final documents that will detail our final project. I plan on taking a lot of content from my GitHub and to rewrite sections of already written text.

Second last class and not much was done other than trying to help whoever asked for help, my program is still coming together quite solidly and I expect to have it easily finished before the presentation day. During the class however we went over what is to be expected on presentation, eg what time and what we will be required to bring. After this class I began to put together my idea of how I would like my project to be displayed. While my program has some intricate code and algorithms, the actual project itself has never been flashy. So I plan on displaying it on my laptop screen with the screen reversed, and provide a mouse and keyboard that will be able to control the program's camera movement, and the generation of the park itself.

<p align="center">
<img width="353" height="310" src="https://github.com/Dropboy/Slave-to-the-Algorithm/blob/Journal/Images%20and%20Resources/Week%2011/Exhibition%20display.png">

This is a quick sketch of what I imagine it will look like. Hopefully this won't be too hard to setup on the day and will look as minimal but welcoming as I envision it to.

During the class I also created the display function for my park bench. Originally I had created it using the same method as my table display, however once I got home and began playing with the spawning of the park benches, I realised that because there were translates and rotateAxis functions within my display function and spawning functions, they wouldn't display properly when spawning, and would have taken some rewriting of my spawning functions. Instead I researched the beginShape() and vertex() functions, which allowed me to create custom shapes that did not need its axis rotated, instead you could plan out how it looked by plotting it on the imaginary graph. This generated a similar if not better effect then when using rectangle and line functions, and it also worked with the spawning function, making it a much needed improvement to my code.
