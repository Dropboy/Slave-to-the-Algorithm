// Coding Rainbow
// Daniel Shiffman
// http://patreon.com/codingtrain
// Code for: https://youtu.be/JcopTKXt8L8



class Tree {
  ArrayList<Branch> branches = new ArrayList<Branch>();
  ArrayList<Leaf> leaves = new ArrayList<Leaf>();
  float x = random(-500,500);
  float z = random(-500,500);
  
  Tree() {
    
    for (int i = 0; i < random(500); i++) {
      leaves.add(new Leaf());
      leaves.get(i).pos.x+=x;
      leaves.get(i).pos.z+=z;
    }    
    Branch root = new Branch(new PVector(x,height/2,z), new PVector(0, -1));
    branches.add(root);
    Branch current = new Branch(root);

    while (!closeEnough(current)) {
      Branch trunk = new Branch(current);
      branches.add(trunk);
      current = trunk;
    }
  }

  boolean closeEnough(Branch b) {

    for (Leaf l : leaves) {
      float d = PVector.dist(b.pos, l.pos);
      if (d < max_dist) {
        return true;
      }
    }
    return false;
  }

  void grow() {
    for (Leaf l : leaves) {
      Branch closest = null;
      PVector closestDir = null;
      float record = -1;

      for (Branch b : branches) {
        PVector dir = PVector.sub(l.pos, b.pos);
        float d = dir.mag();
        if (d < min_dist) {
          l.reached();
          closest = null;
          break;
        } else if (d > max_dist) {
        } else if (closest == null || d < record) {
          closest = b;
          closestDir = dir;
          record = d;
        }
      }
      if (closest != null) {
        closestDir.normalize();
        closest.dir.add(closestDir);
        closest.count++;
      }
    }

    for (int i = leaves.size()-1; i >= 0; i--) {
      if (leaves.get(i).reached) {
        leaves.remove(i);
      }
    }

    for (int i = branches.size()-1; i >= 0; i--) {
      Branch b = branches.get(i);
      if (b.count > 0) {
        b.dir.div(b.count);
        PVector rand = PVector.random2D();
        rand.setMag(0.3);
        b.dir.add(rand);
        b.dir.normalize();
        Branch newB = new Branch(b);
        branches.add(newB);
        b.reset();
      }
    }
  }

  void show() {
    for (Leaf l : leaves) {
      l.show();
    }    
    //for (Branch b : branches) {
    for (int i = 0; i < branches.size(); i++) {
      Branch b = branches.get(i);
      if (b.parent != null) {
        float sw = map(i, 0, branches.size(), 6, 0);
        strokeWeight(sw);
        stroke(255);
        line(b.pos.x, b.pos.y, b.pos.z, b.parent.pos.x, b.parent.pos.y, b.parent.pos.z);
      }
    }
        stroke(255);
        strokeWeight(3);
        pushMatrix();
        translate(0,height/2,z);
        rotateX(PI/2.0);
        ellipse(x,0,200,200);
        popMatrix();
  }
}
