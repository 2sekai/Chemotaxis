 //declare bacteria variables here   
Walker [] hi;
Walker bone;
void setup() { //initialize bacteria variables here  
  size(500, 500);
  hi = new Walker[10]; // instantiating / initializing - without the new keyword, an instance doesnt exist
  for (int i=0; i<hi.length; i++) { 
    hi[i]= new Walker(); // lease le apartment out to an object :D 
  }

  bone = new Walker();
}
void draw() { //move and show the bacteria  
  background(160, 214, 180);

  for (int i=0; i<hi.length; i++) {
    hi[i].move();
    hi[i].show();
  }

  bone.bonemove();
  bone.boneshow();
}

class Walker
{
  int myX, myY, myColor;
  Walker() {
    myX= myY = 250;
    myColor = color(240+(int)(Math.random()*70), 208-(int)(Math.random()*30), 140-(int)(Math.random()*40));
  }
  void move() {

    if (mouseX>myX)
      myX = myX + (int)(Math.random()*5)-1;
    else if (mouseX<myX)
      myX = myX + (int)(Math.random()*5)-3;

    if (mouseY>myY)
      myY = myY + (int)(Math.random()*5)-1;
    else if (mouseY<myY)
      myY = myY + (int)(Math.random()*5)-3;

    //myY = myY + (int)(Math.random()*11)-5;
  }
  void bonemove() {
    myX=mouseX;
    myY=mouseY;
  }

  void show() {

    fill(myColor);
    ellipse (myX, myY, 45, 60); // head
    bezier(myX+5, myY+20, myX+5, myY-35, myX+15, myY-30, myX+30, myY-35); //ears?
    bezier(myX+5, myY+20, myX-5, myY-35, myX-15, myY-30, myX-30, myY-35); //ears?
    ellipse(myX, myY+15, 50, 30); //torso
    bezier(myX+10, myY+30, myX+32, myY+22, myX+32, myY+22, myX+35, myY); //tail
    stroke(0);
    strokeWeight(2);
    ellipse (myX+2, myY-2, 10, 5);
    noFill();
    beginShape();
    curveVertex(myX-6, myY+6);
    curveVertex(myX-6, myY+6);
    curveVertex(myX, myY);
    curveVertex(myX, myY);
    curveVertex(myX+4, myY);
    curveVertex(myX+4, myY);
    curveVertex(myX+12, myY+6);
    curveVertex(myX+12, myY+6);
    endShape();
    noStroke();
    fill(0);
    ellipse (myX-8, myY-10, 6, 6);
    ellipse (myX+12, myY-10, 6, 6);

    myY = myY + (int)(Math.random()*5)-2;
    myX = myX + (int)(Math.random()*5)-2;
  }

  void boneshow() {
    fill(255);
    rect(myX, myY, 40, 15);
    ellipse(myX-7, myY-3, 22, 20);
    ellipse(myX-7, myY+13, 22, 20);
    ellipse(myX+37, myY-3, 22, 20);
    ellipse(myX+37, myY+13, 22, 20);
  }
}
