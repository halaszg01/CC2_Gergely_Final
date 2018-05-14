Base base;
Shooter shooter;
void setup()
{
  size(800, 800);
  base = new Base();
  shooter = new Shooter();
}
void draw()
{
  background(255,100,30);
  base.move();
  base.bounce();
  base.Draw();
  shooter.shot();
  shooter.update();

  if (keyPressed)
  {
    if (key=='e');
    {
      shooter.fire();
    }
  }
}