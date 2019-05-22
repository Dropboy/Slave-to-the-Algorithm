class Platform {
  float x = random(-1000,1000);
  
  Platform() {
     ArrayList<Tree> Forest = new ArrayList<Tree>();
  }
  
  void creategrid(float x, float z, float w, float h, int rows, int cols){
    float xd = w/cols;    
    float zd = h/rows;
    
    for( int ix = 0; ix < (cols+1); ix++){
     for( int iz = 0; iz < (rows+1); iz++){
        float p = 0.4f; // stores to memory makes sure it can't be overwritten by another data type
        Forest.add(new Tree(x+xd*ix+random(-p,p)*xd,z+zd*iz+random(-p,p)*zd));
     }
    }
   }
   
   ArrayList getforest(){
     return Forest;
   }
      
  void show(){ 
    noFill();
    stroke(255);
    strokeWeight(5);
    pushMatrix();
    translate(0,height/2+50,0);
    //fill(50,13,20);
    box(2000, 100, 2000);
    popMatrix();
  }
  
  void pathway(){
    pushMatrix();
    strokeWeight(5);
    stroke(255);
    translate(0,height/2,0);
    rotateX(PI/2.0);
    rect(x,-1000,300,2000);
    popMatrix();
}
  void park(){
    creategrid(-1000.0,-1000.0,2000,2000,4,4);
    pathway();
    
  }
}
