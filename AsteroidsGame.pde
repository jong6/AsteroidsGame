//your variable declarations here
Star[] spaceSky = new Star[200];
Spaceship USS = new Spaceship();

public void setup() 
{
  size(500,500);
  for (int i=0; i<spaceSky.length; i++)
  {
    spaceSky[i] = new Star();
  }
  USS.accelerate(1);
}
public void draw() 
{
  background(0);
  USS.show();
  USS.move();
  for (int i=0; i<spaceSky.length; i++)
  {
    spaceSky[i].show();
  }
}
public void keyPressed()
{
  if(key =='h')
  {
    USS.hyperspace();
  }
  if(key == 'd')
  {
    USS.turn(6);
  }
  if(key == 'a')
  {
    USS.turn(-6);
  }
  if(key == 'w')
  {
    USS.accelerate(2);
  }
  if(key == 's')
  {
    USS.accelerate(-2);
  }
}
