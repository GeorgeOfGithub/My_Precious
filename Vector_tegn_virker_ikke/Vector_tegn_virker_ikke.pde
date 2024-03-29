PVector location;
PVector velocity;


void setup() {
  size(640,360);
  PVector location = new PVector(100,100);
  PVector velocity = new PVector(1,3.3);
}

void draw() {
  background(200);
  
  location.add(velocity);
  
  if (location.x > width || location.x < 0) {
    velocity.x = velocity.x * -1;
  }
  if (location.y > width || location.y < 0) {
    velocity.y = velocity.y * -1;
  }
  
  stroke(0);
  fill(175);
  
  ellipse(location.x,location.y,32,32);
}
  
