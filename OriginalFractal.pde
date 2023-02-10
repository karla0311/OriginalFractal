int x;
int y ;
int s = 100;

public void setup(){
  size(700,600);
  background(#c6e8f7);
  frameRate(15);
}

public void draw(){
  myFractal(x,y,s);
  heart(350,300);
}

public void mousePressed(){
  x = mouseX;
  y = mouseY;
}

public void myFractal(int x, int y, int siz){
  fill(240, (int)(Math.random()*100), (int)(Math.random()*100),20);
  stroke(#661414);
  if(siz < 10){
    ellipse(x,y,siz,siz);
  }else{
    ellipse(x-siz/4,y,siz/2,siz/2);
    ellipse(x-siz*(float)Math.sqrt(2)/8,y-siz*(float)Math.sqrt(2)/8,siz/2,siz/2);
    ellipse(x,y-siz/4,siz/2,siz/2);
    ellipse(x+siz*(float)Math.sqrt(2)/8,y-siz*(float)Math.sqrt(2)/8,siz/2,siz/2);
    ellipse(x+siz/4,y,siz/2,siz/2);
    ellipse(x+siz*(float)Math.sqrt(2)/8,y+siz*(float)Math.sqrt(2)/8,siz/2,siz/2);
    ellipse(x,y+siz/4, siz/2, siz/2);
    ellipse(x-siz*(float)Math.sqrt(2)/8,y+siz*(float)Math.sqrt(2)/8,siz/2,siz/2);
    myFractal(x,y,siz/2);
  }
}

public void heart(int x, int y){
  fill(255,(int)(Math.random()*255),(int)(Math.random()*255));
  beginShape();
  curveVertex(x,y); 
  curveVertex(x,y);
  curveVertex(x+10,y-5);
  curveVertex(x+20,y+5); 
  curveVertex(x,y+25); 
  curveVertex(x-20,y+5);
  curveVertex(x-10,y-5);
  curveVertex(x,y);
  curveVertex(x,y);
  endShape();
}
