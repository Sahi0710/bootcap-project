Ball[] balls;
Ball specialBall;
color infectedColour;

void setup()
{
  size(400, 300);
  infectedColour = color( #AD7FD6);
  balls = new Ball[20];
  for (int i=0; i<balls.length; i=i+1)
  {
    balls[i] = new Ball();
    balls[i].colour = color(#951A73);
  }
}
{
  specialBall=new Ball();
  specialBall.radius = 25;
  specialBall.colour = infectedColour;
  specialBall.position.x = 0;
  specialBall.position.y = 0;
  specialBall.velocity.x = 1;
  specialBall.velocity.y = 0.6;
}

void draw()
{
  background(254, 244, 232);
  for (Ball ball : balls)
  {
    ball.draw();
    ball.move();
    if (dist(specialBall.position.x, specialBall.position.y,
      ball.position.x, ball.position.y) < specialBall.radius+ball.radius)
    {
      ball.colour = infectedColour;
    }
  }

  specialBall.draw();
  specialBall.move();
}

void keyPressed()
{
  if (key==' ') {
    noLoop();
  }
  if (key=='s') {
    loop();
  }
}
