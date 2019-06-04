import peasy.*;

Tree tree;

PeasyCam cam;

ArrayList<Tree> Forest = new ArrayList<Tree>();
Platform p;
Parkbench b;
float x = random(-500, 500);
float z = random(-500, 500);
float br = random(800, 1200);
float min_dist = 5;
float max_dist = 500;

  void setup() {
  size(1000, 1000, P3D);
  cam = new PeasyCam(this, 2000);
  p = new Platform();
  b = new Parkbench();
  p.getforest();
  p.park();
}

void draw() {
  background(0);
  x = p.returnX();
  p.pathway();
  p.show();
  b.displayP();
  for (Tree t : Forest) {
    t.grow();
    t.show();
  }
}
/*
void reset(){
    frameCount = -1;
}

void keyPressed(){
  reset();
}
*/
