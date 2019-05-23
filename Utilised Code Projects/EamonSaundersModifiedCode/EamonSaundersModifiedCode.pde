import peasy.*;

Tree tree;
//Path p;

PeasyCam cam;


ArrayList<Tree> Forest = new ArrayList<Tree>();
Platform p;
float x = random(-500,500);
float z = random(-500,500);
float min_dist = 5;
float max_dist = 500;

void setup() {
  size(1000, 1000, P3D);
  cam = new PeasyCam(this,2000);
  p = new Platform();
  p.getforest();
  p.park();
}

void draw() {
  background(0);
  p.pathway();
  p.show();
  p.parkbench();
  for (Tree t : Forest){
    t.grow();
    t.show();
  }
}
