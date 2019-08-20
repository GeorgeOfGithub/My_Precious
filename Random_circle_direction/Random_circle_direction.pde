Mover mover;
int accelerationCount = 0;


void setup() {
  size(640,360);
  mover = new Mover(); 
}

void draw() {
  background(0);
  
  mover.update();
  mover.display(); 
}



class Mover {

  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;
  float mass;

  Mover() {
    mass = 1000;
    location = new PVector(width,height);
    velocity = new PVector(10,10);
    
    topspeed = 100;
  }
   void update() {
    
    PVector start = new PVector(random(0,width),random(0,height));
    PVector acceleration = PVector.sub(start,location);
    acceleration.setMag(10);
 
    velocity.limit(topspeed);
    location.add(velocity);
    if (location.x > width || location.x < 0) {
    velocity.x = velocity.x * -1;
  }
  if (location.y > height || location.y < 0) {
    velocity.y = velocity.y * -1;
  }
  
  accelerationCount++;
  if(accelerationCount == 20) {
    velocity.add(acceleration);
    accelerationCount = 0;
    acceleration.mult(0);
  }
  }

  void display() {
    stroke(255);
    strokeWeight(0);
    fill(127);
    ellipse(location.x,location.y,48,48);
  }
  }
