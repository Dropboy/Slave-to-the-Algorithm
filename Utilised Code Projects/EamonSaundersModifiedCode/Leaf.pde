float r = random(1000);

class Leaf {
  PVector pos;
  boolean reached = false;

  Leaf() {
    pos = PVector.random3D();
    pos.mult(random(height/2));
    pos.y -= height/4;
  }

  void reached() {
    reached = true;
  }

  void show() {
    strokeWeight(3);
    stroke(255);
    noFill();
    pushMatrix();
    translate(pos.x, pos.y, pos.z);
    //sphere(4);
    //ellipse(0,0, 4, 4);
    popMatrix();
  }
}
