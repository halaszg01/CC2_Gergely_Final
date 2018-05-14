class Base
{
  PVector pos;
  PVector velocity;
  color Color;

  Base()
  {
    pos =new PVector(600, 400);
    velocity = new PVector(0, -2);
    Color = color(random(255));
  }
  void Draw()
{
  fill(Color);
 ellipse(pos.x, pos.y, 20, 20);
}
  void move()
  {
    pos.add(velocity);
  }
  void bounce()
  {
    if (pos.y>height||pos.y<0)
    {
      velocity.mult(-1);
    }
  }
}