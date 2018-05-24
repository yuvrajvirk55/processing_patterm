
int[] point_a = new int[30];
int[] point_b = new int[30];
int reca = 10;


void setup() {
  size(500,500);
  background(250,250,250);
  frameRate(10);
}

void draw(){
  }
  
  void mouseClicked()
  {
    if (mouseX< 250 & mouseY<250){
     drawe(0,0,1000,1000);
    }
    if (mouseX< 250 & mouseY>250){
     drawe(0,500,1000,1000);
    }
    if (mouseX> 250 & mouseY<250){
     drawe(500,0,1000,1000);
    }
    if (mouseX> 250 & mouseY>250){
     drawe(500,500,1000,1000);
    }
  }
  
  
    void mouseDragged()
  {
    drawl(0,0,500,0);
  }
  
  void keyPressed()
  {
    if (key=='a')
    drawr(0,0,500,500);
    
    else
    draws(250,250,500,500);
    {
       
    }
    
 
  }
  
 
   void draws(int a, int b,int c ,int d)
  {
    noStroke();
    ellipse(a,b,c,d);
    fill(random(0,255),random(0,255),random(0,255));
    ellipse(a,b-c/2,c,d);
    fill(random(0,255),random(0,255),random(0,255));
    ellipse(a,b+c/2,c,d);
    fill(random(0,255),random(0,255),random(0,255));
    ellipse(a-c/2,b,c,d);
    fill(random(0,255),random(0,255),random(0,255));
    ellipse(a+c/2,b,c,d);
    fill(random(0,255),random(0,255),random(0,255));
    
    c=c-20;
    d=d-20;
    
    if(c>20)
    {
     draws(a,b,c,d); 
    }
   
 
    
  }
  
  
  
   void drawr(int a, int b,int c ,int d)
  {
    noStroke();
    rect(a,b,c,d);
    fill(0,0,random(0,255));
    a =a+10;
    b=b+10;
    c=c-20;
    d=d-20;
 
    if (c>0)
    {
    drawr(a,b,c,d);
    }
  }
  
  
  
  void drawe(int a, int b,int c ,int d)
  {
    noStroke();
    ellipse(a,b,c,d);
    fill(random(0,255),random(0,255),random(0,255));
    c=c-50;
    d=d-50;
 
    if (c>0)
    {
    drawe(a,b,c,d);
    }
  }
  
  void drawl(int a, int b,int c ,int d)
  {
    line(a,b,c,d);
    stroke(random(0,255),random(0,255),random(0,255));
   strokeWeight(30);
    b=b+30;
    d=d+30;
   
    if (d<500)
    {
    drawl(a,b,c,d);
    }
  }
  

  
  
  
  
