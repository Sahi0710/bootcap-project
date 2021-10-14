class Ball
{
  PVector position;   
  PVector velocity;    
  float radius;       
  color colour;        


  Ball()
  {
    position = new PVector(width/2, height/2);
    velocity = new PVector(random(-3, 3), random(-3, 3));
    radius = 15;
    colour   = color(214, 93, 69);
  }

  void draw()
  {
    noStroke();
    fill(colour);
    circle(position.x, position.y, radius * 2);
  }


  void move()
  {
    position.x = position.x + velocity.x;
    position.y = position.y + velocity.y;

    if (position.x-radius < 0 && velocity.x < 0)
    {

      velocity.x = -1*velocity.x;
    } else if (position.x+radius > width && velocity.x > 0)
    {

      velocity.x = -1*velocity.x;
    }

    if (position.y-radius < 0 && velocity.y < 0)
    {

      velocity.y = -1*velocity.y;
    } else if (position.y+radius > height && velocity.y > 0)
    {

      velocity.y = -1*velocity.y;
    }
  }
}
