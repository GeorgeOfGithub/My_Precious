Mover mover;
float mass = 10;
float gravity = 0.1* mass;

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
    mass = 5;
    location = new PVector(width/3,height/3);
    velocity = new PVector(0.3,0.3);
    topspeed = 10;
  }

  void update() {
    
    PVector start = new PVector(height/2,width/2);
    PVector acceleration = PVector.sub(start,location);
    acceleration.setMag(0.3);
    
    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
    if (location.x > width || location.x < 0) {
    velocity.x = velocity.x * -1;
  }
  if (location.y > height || location.y < 0) {
    velocity.y = velocity.y * -1;
  }
  }

  void display() {
    stroke(255);
    strokeWeight(2);
    fill(127);
    ellipse(location.x,location.y,48,48);
  }

}
