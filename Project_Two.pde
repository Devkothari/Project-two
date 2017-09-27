//Devansh Kothari
//Project Two: For loops, Arrays, Functions

PImage gameover;
PImage pacmanup;
PImage pacmandown;
PImage pacmanleft;
PImage pacmanright;
int direction = 0;
int [] dir = new int[1000];
int [] y = new int[1000];
int [] x = new int[100];
int randomNumber; 

void setup()
{
  size(800, 800);
  gameover= loadImage("Gameover.jpg");
  gameover.resize(800, 800);
  pacmanup= loadImage("pacmanup.png");
  pacmanup.resize(200, 200);
  pacmandown= loadImage("pacmandown.png");
  pacmandown.resize(200, 200);
  pacmanright= loadImage("pacmanright.png");
  pacmanright.resize(200, 200);
  pacmanleft= loadImage("pacmanleft.png");
  pacmanleft.resize(200, 200);
  for (int i=0; i<1000; i++)
  {
    int randomNumber = (int)random(1, 4);
    if (randomNumber == 1)
    {
      y[i]=0;
      x[i]=400;
      dir[i]=randomNumber;
    }
    if (randomNumber == 2)
    {
      y[i]=400;
      x[i]=0;
      dir[i]=randomNumber;
    }
    if (randomNumber == 3)
    {
      y[i]=800;
      x[i]=400;
      dir[i]=randomNumber;
    }
    if (randomNumber == 4)
    {
      y[i]=400;
      x[i]=800;
      dir[i]=randomNumber;
    }
  }
}



void draw()
{
  background(#3A80D3);
  fill(#FAFBFC);
  textSize(42);
  text(millis()/1000, 700, 100);
  if (direction ==1)
  {
    image(pacmanup, 300, 300);
  }
  if (direction == 2)
  {
    image(pacmandown, 300, 300);
  }
  if (direction == 3)
  {
    image(pacmanright, 300, 300);
  }
  if (direction == 4)
  {
    image(pacmanleft, 300, 300);
  }
  if (millis()/1000>20)
  {
    background(gameover);
  }
  for (int i=0; i<100; i++)
  {
    fill(#065014);
    ellipse(x[i], y[i], 50, 50);
    if (dist(x[i], y[i], 400, 400)<75)
    {
      fill(0);
      ellipse(x[i], y[i], 50, 50);
    }

    if (dir[i]==1)
    {
      y[i]=y[i]+4;
    }
    if (dir[i]==2)
    {
      x[i]=x[i]+2;
    }
    if (dir[i]==3)
    {
      y[i]=y[i]-5;
    }
    if (dir[i] == 4)
    {
      x[i]=x[i]-5;
    }
  }
}





void keyPressed()
{
  if (key =='w')
  {
    direction = 1;
  }
  if (key =='s')
  {
    direction = 2;
  }
  if (key =='d')
  {
    direction = 3;
  }
  if (key =='a')
  {
    direction = 4;
  }
}