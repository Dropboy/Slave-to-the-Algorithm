
void table(){
    stroke(255);
    strokeWeight(5);
    noFill();
    pushMatrix();
    translate(0,height/2-100,0);
    box(250,25,500);
    popMatrix();
    noFill();
    pushMatrix();
    translate(0,400,width/2-100);
    box(50,100,50);
    popMatrix();
    pushMatrix();
    translate(0,400,width/2-100); 
    box(50,100,50);
    popMatrix();
    pushMatrix();
    translate(0,400,-width/2+100); 
    box(50,100,50);
    popMatrix();
    pushMatrix();
    translate(0,400,-width/2+100); 
    box(50,100,50);
    popMatrix();
}
