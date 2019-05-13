// Coding Rainbow
// Daniel Shiffman
// http://patreon.com/codingtrain
// Code for: https://youtu.be/JcopTKXt8L8

import peasy.*;

Tree tree;

PeasyCam cam;


float x = random(500);
float z = random(500);
float min_dist = 5;
float max_dist = 500;

void setup() {
  size(600, 900, P3D);
  cam = new PeasyCam(this, 1000);
  tree = new Tree();
}

void draw() {
  background(51);
  pushMatrix();
  //translate(x,0,z);
  tree.show();
  tree.grow();
  popMatrix();
  platform();
  table();
}

/*
void keyPressed(){
  translate(x,0,z);
  tree.show();
  tree.grow();
  table();
  pushMatrix();
  popMatrix();

}
*/
