class Parkbench {
  float gutter = random(-1700, -1000);
  
  Parkbench() {
  print(gutter);
  }

  void display(float x, float z) {
    pushMatrix();
    translate(x, 0, z);
    stroke(255);
    strokeWeight(5);

    beginShape(); //First Rectangle    
    vertex(0, 430, -200);
    vertex(0, 430, 200);
    vertex(130, 430, 200);
    vertex(130, 430, -200);
    endShape(CLOSE);

    beginShape(); //Second Rectangle
    vertex(-30, 300, -200);
    vertex(-30, 300, 200);
    vertex(0, 415, 200);
    vertex(0, 415, -200);
    endShape(CLOSE);

    beginShape(LINES); //LEGS
    vertex(0, 430, -200);
    vertex(0, 500, -200);
    vertex(0, 430, 200);
    vertex(0, 500, 200);
    vertex(130, 430, -200);
    vertex(130, 500, -200);
    vertex(130, 430, 200);
    vertex(130, 500, 200);
    endShape(CLOSE);
    popMatrix();
  }
    float returnZ() {
      return gutter;
    }
    
    void displayP() {
      for ( float z = returnZ(); z < 1800; z+=1200 ) {
        display(x-300, z);
      }
    }
    
}
