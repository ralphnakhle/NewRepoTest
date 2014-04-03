class Pedestrian {

  PVector location;
  boolean pickedUp = false;
  PVector velocity;
  boolean canBePickedUp = true;
  int alpha = 255;
  
  Pedestrian (PVector location_) { 

    location = location_;
    velocity = new PVector (0, 0);
  }
  
  void display(){
    
    fill(0, 255, 0, alpha);
   ellipse(location.x, location.y, 3, 3); 
  }
  
  
  void setPickedUp (boolean pickedUp_, PVector velFromCar ){
   pickedUp = pickedUp_;
   velocity = velFromCar.get();
   velocity.normalize();
   velocity.mult(0.01);
   
  }
  
  
  void update(Car car) {
      
      location.x = car.position.x;
      location.y = car.position.y;
    //}
    
  }
  
  void reset () {
      pickedUp =false;
      canBePickedUp = false;
      alpha = 10;
  }
  
  
}

