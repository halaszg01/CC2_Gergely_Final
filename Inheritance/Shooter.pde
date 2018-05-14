class Shooter extends Base
{
  PVector mousePosition;
  PVector bulletDir;
  PVector bulletPos;
  PVector mouse;
  boolean isFired;
  Shooter()
  {
     Color = color(random(255),random(255),random(255));
    bulletDir =new PVector(0, 0);
    bulletPos=new PVector(-100, -100);
    pos=new PVector(200,400);
    isFired=false;
  }
  void update()
  {
    fill(Color);
    ellipse(pos.x, pos.y, 30, 30);
  }
  void fire()
  {
    if(isFired ==false)
    {
    bulletPos=pos; 
    mouse= new PVector(mouseX, mouseY);
    bulletDir= mouse.sub(pos);
    bulletDir.normalize();
    bulletDir.mult(3);
    isFired= true;
  }
  }
  void shot()
  {

    bulletPos.add(bulletDir);
    if(bulletPos.x>width||bulletPos.x<0)
    {
      isFired=false;
      bulletDir=new PVector(0,0);
      pos=new PVector(200,400);
    }
  }
}