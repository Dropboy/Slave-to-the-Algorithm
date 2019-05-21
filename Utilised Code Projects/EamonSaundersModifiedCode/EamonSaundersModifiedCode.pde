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
  cam = new PeasyCam(this,1000);
  p = new Platform();
  //p.creategrid(-1000,-1000,500,2000,3,3);
  //p.creategrid(500,-1000,500,2000,3,3);
  p.getforest();
  p.pathway();
  //Forest.add(tree);
}

void draw() {
  background(0);
  p.show();
  for (Tree t : Forest){
    t.grow();
    t.show();
  }
}

/*

void keyPressed(){
  if (key == 'g' || key == 'G') {
    Forest.clear();
   } else{
    Forest.add(new Tree());
   }
}

*/
