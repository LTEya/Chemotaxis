Bacteria[] bob;
void setup()
{
  size(1000, 1000);
  bob = new Bacteria[1000];
  for(int i=0; i<bob.length; i++)
    bob[i]= new Bacteria(100*i,100*i); 
}
void draw()
{
  background(123,321,213);
  {
  for(int i=0; i<bob.length; i++){    
    bob[i].show();
    bob[i].walk();
  }
  }
}
class Bacteria
{
  int mySize, myX, myY;
  Bacteria(int x, int y) {
    mySize = 0;
    myX = x;
    myY = y;
  }
  void walk() {
    myX = myX + (int)(Math.random()*8)-3;
    myY = myY + (int)(Math.random()*40)-3;
    if (myY >1000) myY=0;
  }
  void show() {
    strokeWeight(1.5);
    fill(255);
    ellipse(myX, myY, 50, 50);
  }
}
