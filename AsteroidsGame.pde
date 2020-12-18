//your variable declarations here
Star[] spaceSky = new Star[200];
Spaceship USS = new Spaceship();

ArrayList <Bullet> pew = new ArrayList<Bullet>();
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
    float dis= dist((float)USS.getX(), (float)USS.getY(), (float)asteroid.get(i).getX(), (float)asteroid.get(i).getY());
    if(dis<20)
    {
      asteroid.remove(i);
    }
  }
  for(int i=0; i<pew.size();i++)
  {
    pew.get(i).move();
    pew.get(i).show();
    for(int j=0;j<asteroid.size();j++)
    {
      float d= dist((float)pew.get(i).getX(), (float)pew.get(i).getY(), (float)asteroid.get(j).getX(), (float)asteroid.get(j).getY());
      if(d<10)
      {
        asteroid.remove(j);
        pew.remove(i);
      }
    }
  }
  if(asteroid.size() == 0)
  {
    for(int i=0; i<15;i++)
    {
      asteroid.add(new Asteroid());
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
  if(key == ' ')
  {
    pew.add(new Bullet());
  }
}
