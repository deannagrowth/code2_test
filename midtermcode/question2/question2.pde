Object myObject; 

void setup(){
  size(600, 600); 
  
  myObject = new Object(); 
}

void draw(){
  background(255); 
  myObject.move(); 
  myObject.checkBoundaries(); 
  myObject.display(); 
}


class Object{
  PVector pos, vel, accel; 
  
  Object(){
    pos = new PVector(width/2, height/2); 
    vel = new PVector(0, 0); 
    
  }
  
  void move(){
    PVector mouse = new PVector(mouseX,mouseY);
    accel = PVector.sub(mouse,pos);
    
    //normalize your accel vector here
    mouse.normalize();
    vel.limit(4); 
    
    //basic movement vector addition here...
    translate(mouseX - 50, mouseY - 50); //allows the ellipse to follow mouse
    
  }
  
  void display() {
    stroke(0);
    fill(175);
    ellipse(pos.x,pos.y,30,30);
  }
  
  void checkBoundaries(){
    //add logic here so when the ellipse gets to the edge of the 
    //it is positioned on the opposite side
    ellipseMode(CENTER);  // Set ellipseMode to CENTER
    ellipse(50, 50, 30, 30);  // Draw gray ellipse using CENTER mode
  }
}
