PImage sun;
ant[] a;
void setup()
{
  size(540,360);
  sun=loadImage("sun.jpeg");
  a=new ant[100];
  PVector[] p=new PVector[a.length];
  int v;
  for(int i=0;i<a.length;i++)
  {
    v=1;
    p[i]=new PVector(int(random(width)),int(random(height)));    
    a[i]=new ant(p[i],v,20,color(0,0,200));
  }
}
void draw()
{
 // background(0);
 sun.loadPixels();
 updatePixels();
  for(int i=0;i<a.length;i++)
  {
    a[i].drawme();
    a[i].update();
  }
}
