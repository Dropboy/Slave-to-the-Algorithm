// Coding Rainbow
// Daniel Shiffman
// http://patreon.com/codingtrain
// Code for: https://youtu.be/JcopTKXt8L8

import peasy.*;

Tree tree;
//Path p;

PeasyCam cam;


ArrayList<Tree> Forest = new ArrayList<Tree>();
float x = random(-500,500);
float z = random(-500,500);
float min_dist = 5;
float max_dist = 500;

void setup() {
  size(1000, 1000, P3D);
  cam = new PeasyCam(this,1000);
  tree = new Tree();
  Forest.add(tree);
}

void draw() {
  background(0);
  platform();
  //pathway();
  //table();
  for (Tree t : Forest){
    t.grow();
    t.show();
  }
}
/*
void keyPressed(){
  Forest.add(new Tree());
}
*/

void keyPressed(){
  if (key == 'g' || key == 'G') {
    Forest.clear();
   } else{
    Forest.add(new Tree());
   }
}
