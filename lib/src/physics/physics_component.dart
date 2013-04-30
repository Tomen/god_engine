part of god_engine;

class PhysicsComponent extends Component {
  
  double acceleration = 0.0;
  vec3 speed = new vec3.zero();
  
  void accelerate() {
    acceleration = 1.0;  
  }
  
  void decelerate() {
    acceleration = -1.0;
  }
  
}

