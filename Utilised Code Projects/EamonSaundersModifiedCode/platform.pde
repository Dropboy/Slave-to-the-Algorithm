class Platform {
  float x = random(-1700, 1700);
  Platform() {
    ArrayList<Tree> Forest = new ArrayList<Tree>();
  }

  void creategrid(float x, float z, float w, float h, int rows, int cols) {
    float xd = w/cols;    
    float zd = h/rows;

    if ( w > 0) {
      for ( int ix = 0; ix < (cols+1); ix++) {
        for ( int iz = 0; iz < (rows+1); iz++) {
          float p = 0.4f; // stores to memory makes sure it can't be overwritten by another data type
          Forest.add(new Tree(x+xd*ix+random(-p, p)*xd, z+zd*iz+random(-p, p)*zd)); //<>//
        }
      }
    }
  }

  ArrayList getforest() {
    return Forest;
  }

  float returnX() {
    return x;
  }
  
  void reset(){
    Forest.clear();
  }

  void show() { 
    noFill();
    stroke(255);
    strokeWeight(5);
    pushMatrix();
    translate(0, height/2+100, 0);
    box(4000, 200, 4000);
    popMatrix();

  }

  void pathway() {
    
    pushMatrix();
    strokeWeight(5);
    stroke(255);
    translate(0, height/2, 0);
    if (rotation != 0){
      rotateY(rotation);
    }
    //rotateY(PI/2);  Rotate 
    rotateX(PI/2.0);
    
    rect(x, -2000, 300, 4000);
    popMatrix();
    
  }
  void park() {
    creategrid(-1500, -1400, x+600, 2800, 2, 2);
    creategrid(x+800, -1400, 700-x, 2800, 2, 2);
    pathway();
    
  }
}
