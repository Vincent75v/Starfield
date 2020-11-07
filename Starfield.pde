Particle[] Star = new Particle[1500];  
void setup()
{
  
  background(0);
  size(550, 550);
  for (int i=0; i<Star.length; i++)
  {
  Star[i] = new Particle();
  Star[1499] = new OddballParticle();
  }

 
}
void draw()
{
  
  for (int i=0; i<Star.length; i++)
  {
  Star[i].move();
  Star[i].show();
  }
  
}
class Particle
{
  double X, Y, Speed, Angle, Size;
  int paint;
  Particle()
  { 
    
    X = 300;
    Y = 300;
    Angle =(Math.random()*2*PI);
    Speed = (Math.random()*2+1);
    Size = 5;
    paint = color(255,204,0);
  }
  void move()
  {
    X+= Speed*Math.cos(Angle);
    Y+= Speed*Math.sin(Angle);
  }
  void show()
  {
    
    fill(255,255,255,255);
    ellipse((float)X,(float)Y,(float)Size,(float)Size);
  }
}
    

  class OddballParticle extends Particle 
  {
    OddballParticle()
    {
     
      X=255;
      Y=255;
      
    }
    void move()
    {
       
      X += Math.random()*5-2.5;
      Y += Math.random()*5-2.5;
    }
    void show()
    {
     

      fill(paint);
     
      ellipse((float)X, (float)Y, (float)Size*3, (float)Size*2);
       
    }
  }



