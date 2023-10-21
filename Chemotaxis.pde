Snow[] bob = new Snow[100];
void setup()
{
  frameRate(50);
  size(600, 600);
  for (int i = 0; i < bob.length; i++)
  {
    bob[i] = new Snow();
  }
}
void draw()
{
  background(#8AC7DB);
  for (int i = 0; i < bob.length; i++)
  {
    bob[i].move();
    bob[i].show();
  }
  stroke(#EADDCA);
  strokeWeight(3);
  ellipse(mouseX, mouseY, 15, 15);
  line(mouseX, mouseY+15, mouseX, mouseY+25);
  line(mouseX, mouseY+25, mouseX-7, mouseY+33);
  line(mouseX, mouseY+25, mouseX+7, mouseY+33);
  line(mouseX, mouseY+20, mouseX-7, mouseY+20);
  line(mouseX, mouseY+20, mouseX+7, mouseY+20);
}
class Snow
{
  int colour;
  int size;
  int myX;
  float myY;
  float speed;
  Snow()
  {
    colour = color(((int)(Math.random()*10)+240), ((int)(Math.random()*10)+240), ((int)(Math.random()*10)+240));
    size = (int)(Math.random()*15)+8;
    speed = size/1.7;
    myX = (int)(Math.random()*600);
    myY = (int)(Math.random()*500);
  }
  void move()
  {
    myY = myY + speed;
    myX = myX + (int)(Math.random()*3)-1;
    if (myY > 600)
    {
      myY = -50;
    }
    if (mousePressed==true) {
      if (myX < mouseX)
      {
        myX = myX + (int)(Math.random()*20);
      }
      if (myX > mouseX)
      {
        myX = myX - (int)(Math.random()*20)-1;
      }
    }
  }
  void show()
  {
    fill(colour);
    stroke(colour);
    strokeWeight(2);
    line(myX, myY, myX, myY+25);
    line(myX-10, myY+20, myX+10, myY+6);
    line(myX-10, myY+6, myX+10, myY+20);
    line(myX, myY+8, myX-6, myY);
    line(myX, myY+8, myX+6, myY);
    line(myX, myY+18, myX+6, myY+25);
    line(myX, myY+18, myX-6, myY+25);
    line(myX-8, myY+17, myX-6, myY+15);
    fill(#edf2fb);
    strokeWeight(12);
    stroke(#c1d3fe);
    ellipse(100, 40, 350, 150);
    ellipse(200, 40, 300, 150);
    ellipse(250, 40, 300, 150);
    ellipse(300, 40, 300, 150);
    ellipse(400, 40, 300, 150);
    ellipse(450, 40, 300, 150);
    ellipse(500, 40, 300, 150);
    fill(#edf2fb);
    rect(0, 540, 600, 600);
    fill(#edf2fb);
    rect(0, 530, 600, 20);
  }
}

