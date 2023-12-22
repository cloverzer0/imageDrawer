class ant
{
  PVector p;
  int v;
  int siz;
  color col;
  int k=int(random(2));
  int rand=int(random(2));
  int counter=0;
  int ram=int(random(30,70));
  ant(PVector pos,int speed,int size, color c )
  {
   p=pos; 
   v=speed;
   siz=size;
   col=c;
  }
  void drawme()
  {
    if((p.x)>=sun.width)
    {
      p.x=1;
    }
     if((p.x)<=0)
    {
      p.x=sun.width-1;
    }
    if((p.y)>=sun.height)
    {
      p.y=1;
    }
     if((p.y)<=0)
    {
      p.y=sun.height-1;
    }
    int index=int(p.x)+(int(p.y)*sun.width);
    col=sun.pixels[index];
    fill(col);
    noStroke();
    ellipse(p.x,p.y,siz,siz);
  }
void update()
  {    
     //movement on x-axis
    if(k==0)
     {
     if(counter==ram)
     {
       k=1;
       counter=0;
       rand=int(random(2));
     }
       //greater than 0 less than width
      if((p.x<width)&&(p.x>0))
     {
       //increase ant.x
       if(rand==0)
       {
       p.x+=v;
       }
       else
       {
         p.x+=-v;
       }
     }
     //if its equal to my screen width 
     else
     {
      // go back to the begining
    if(p.x>=width)
     {
       p.x=1;
     }
     //if its equal to the start go to the end
     else if(p.x<=0)
     {
       p.x=width-1;
     }
     }
      counter++;
     }
    else
     {
     
    if((p.y<height)&&(p.y>0))
   {
     if(rand==0)
     {
     p.y+=v;
     }
     else
     {
       p.y+=-v;
     }
   }
   else
   {
     if(p.y>=height)
     {
       p.y=1;
     }
     else if(p.y<=0)
     {
       p.y=height-1;    
     }
   }
    counter++;
   if(counter==ram)
   {
     rand=int(random(2));
     counter=0;
     k=0;
   }
   }
     }
  }
