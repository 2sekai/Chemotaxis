 //declare bacteria variables here   
 Walker [] hi;
void setup() {
	//initialize bacteria variables here   
  size(500, 500);
  hi = new Walker[60];
  for (int i=0; i<hi.length; i++) { //initializing in setup 
    hi[i]= new Walker(); // lease le apartment out to an object :D walkers
  }
}
void draw() {
 	//move and show the bacteria   
  background(100, 100, 100);
  fill(200, 60, 60);
  for (int i=0; i<hi.length; i++) {
    hi[i].move();
    hi[i].show();
  }
}

class Walker
 	//lots of java!   
{
  int myX, myY;
  Walker() {
    myX= myY = 250;
  }
  void move() {
    myX = myX + (int)(Math.random()*11)-5;
    myY = myY + (int)(Math.random()*11)-5;
  }
  void show() {
    ellipse (myX, myY, 30, 30);
  }
}
