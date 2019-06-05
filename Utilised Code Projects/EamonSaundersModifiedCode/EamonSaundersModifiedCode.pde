import peasy.*;

Tree tree;
import java.io.File;
PeasyCam cam;
//File generation = new File("/data/generation.txt");
ArrayList<Tree> Forest = new ArrayList<Tree>();
Platform p;
Parkbench b;
float x = random(-500, 500);
float z = random(-500, 500);
float br = random(800, 1200);
float min_dist = 5;
float max_dist = 500;
float rotation = 0;
final String path = sketchPath("");

void setup() {
  fullScreen(P3D);
  print(path +'\n');
  //size(1000, 1000, P3D);
  /*
  if(generation.exists() == false){
    generation.mkdir();
    print('A');
  }
  print(path +'\n');
  */
  cam = new PeasyCam(this, 4000);
  p = new Platform();
  b = new Parkbench();
  p.getforest();
  p.park();
}

void draw() {
  background(0);
  
  cam.beginHUD();
    textSize(150);
    text(str(gen), 50, height-50);
    textSize(25);
    text("Click and drag to move camera, any keypress for generation", 400, height-50);
  cam.endHUD();
  /*
  cam.beginHUD();
    textSize(50);
    text("Generation: "+str(gen), 50, height-120);
    textSize(50);
    text("Click and drag to move camera, double click to reset 3, any keypress for generation", 50, height-50);
  cam.endHUD();
  */
  x = p.returnX();
  p.pathway();
  p.show();
  b.displayP();
  
  pushMatrix();
  if (rotation != 0) {
    rotateY(rotation);
  }
  for (Tree t : Forest) {
    t.grow();
    t.show();
  }
  popMatrix();
  
  textSize(100);
  text("Pocket Park", 0-1800, height/2+150, 2000);
  /*
  for (int x=0; x<=4; x++){
   textSize(100);
   text("Pocket Park", 0-300, height/2+150, 2000);
   rotateY(PI/2);
   }
   */
}
//String[] strgen = loadStrings("generation.txt");
//int gen = int(strgen[0]);
int gen;
float[] rots = {PI/2, PI, (3*PI)/2, 0};
void keyPressed() {
  Forest.clear();
  p.reset();
  p.x = random(-1700, 1700);
  b.r = random(0.8, 2.5);
  p.park();
  rotation = rots[int(random(20))%4];
  gen++;
  print("\n"+str(gen));
  String[] genSave = {str(gen)};
  saveStrings("generation.txt", genSave);
}
