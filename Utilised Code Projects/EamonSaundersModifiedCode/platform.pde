class Platform {
  float x = random(-2000,1700);
  
  Platform() {
     ArrayList<Tree> Forest = new ArrayList<Tree>();
  }
  
  void creategrid(float x, float z, float w, float h, int rows, int cols){
    float xd = w/cols;    
    float zd = h/rows;
    
    if ( w > 0) {
      for( int ix = 0; ix < (cols+1); ix++){
       for( int iz = 0; iz < (rows+1); iz++){
          float p = 0.4f; // stores to memory makes sure it can't be overwritten by another data type
          Forest.add(new Tree(x+xd*ix+random(-p,p)*xd,z+zd*iz+random(-p,p)*zd));
     }
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
    box(4000, 100, 4000);
    popMatrix();
  }
  
  void pathway(){
    pushMatrix();
    strokeWeight(5);
    stroke(255);
    translate(0,height/2,0);
    rotateX(PI/2.0);
    rect(x,-2000,300,4000);
    popMatrix();
  }
  void park(){
    creategrid(-1600,-1600,x+1600,2600,2,2);
    creategrid(x+700,-1600,800-x,2600,2,2);
    pathway();
    
  }
  void parkbench(){
    stroke(255);
    strokeWeight(5);
    beginShape(); //First Rectangle
      vertex(0,430,-200);
      vertex(0,430,200);
      vertex(130,430,200);
      vertex(130,430,-200);
    endShape(CLOSE);
    beginShape(); //Second Rectangle
       vertex(-30,300,-200);
       vertex(-30,300,200);
       vertex(0,415,200);
       vertex(0,415,-200);
    endShape(CLOSE);
    beginShape(LINES); //LEGS
       vertex(0,430,-200);
       vertex(0,500,-200);
       vertex(0,430,200);
       vertex(0,500,200);
       vertex(130,430,-200);
       vertex(130,500,-200);
       vertex(130,430,200);
       vertex(130,500,200);
     endShape(CLOSE);
    }
}
