//your variable declarations here
Star[] spaceSky = new Star[200];
Spaceship USS = new Spaceship();

ArrayList <Asteroid> asteroid = new ArrayList<Asteroid>();

public void setup() 
{
  size(500,500);
  for (int i=0; i<spaceSky.length; i++)
  {
    spaceSky[i] = new Star();
  }
  for(int i=0; i<15;i++)
  {
    asteroid.add(new Asteroid());
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
  for(int i=0;i<asteroid.size();i++)
  {
    asteroid.get(i).show();
    asteroid.get(i).move();
    float dis = dist((float)USS.getX(),(float)USS.getY(), (float)asteroid.get(i).getX(), (float)asteroid.get(i).getY());
    if(dis<20)
    {
      asteroid.remove(i);
    }
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
