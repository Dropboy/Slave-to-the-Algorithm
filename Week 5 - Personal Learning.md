# Slave to the Algorithm - Week 5

__*Personal learning and fractal exploration*__

With Karen away in Tokyo, I decided to spend the free day I had working away at coding challenges done by one of my new favourite youtubers, The Coding Train. David Shiffman is a wealth of knowledge, and somewhere I will definitely be visiting revisiting for information in regards to my project and further knowledge with processing.

My plan was to finish his playlist on fractal generation by the end of the week, and better understand what was behind these algorithms and methods of creating fractals. After going through the videos and trying to understand the systems better, I found that the space colonisation  algorithm or the recursive fractal trees would be the best for my 3D environment, this is due to both of these generations being more flexible and generating a more 3D look to them, especially the space colonisation example.

While I was watching the videos I tried my best to experiment in Processing itself with some of the easier projects David started with. For example, I wrote along with him for the original fractal tree tutorial, and made my own small changes to make sure I was understanding how the program worked and what each function was essentially doing. During this tutorial one of the biggest functions David was teaching was the translate, pop, and push functions. The translate function moves the position of the canvas, for example, if a line were placed on the canvas at (20,20), and then the translate function was used

```java

void draw() {
  stroke(255);
  line(200,200,300,300);
  translate(40,0);
  line(200,200,300,300);
  translate(-20,0);
  line(200,200,300,300);
}

```
