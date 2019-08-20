

void setup() {
  size(640,360);
}
 
void draw() {
  background(255);

  PVector random  = new PVector(random(0,width),random(0,height));
  PVector center = new PVector(random(0,width),random(0,height));

  random.sub(center);
  random.normalize();
  random.mult(50);
  

  translate(random(0,width),random(0,height));
  line(0,0,random.x,random.y);
  delay(750);
}
