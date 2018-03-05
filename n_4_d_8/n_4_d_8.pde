float r = 100;
int resolution = 100;
float petallen;
float theta;
float x;
float y;
float k;
float n = 4;
float d = 8;
float c= 0;

void setup(){
  size(600,600);
  k=n/d;
}

void draw(){
  
  background(0);
  pushMatrix();
  translate(width*0.5,height*0.5);
  noFill();
  stroke(255);
  beginShape();
  for(int i = 0; i < resolution*d; i++) {
    theta = map(i*millis()*0.1,0,resolution,0,TWO_PI);
    
    petallen = cos(k*theta) + c;
    x = r * petallen * cos(theta);
    y = r* petallen * sin(theta);
    point(x,y);
    vertex(x,y);

  }
  
  endShape(CLOSE);
  popMatrix();
  
}