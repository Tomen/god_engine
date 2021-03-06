part of god_engine;

class PhysicsSimulator {
  Scene scene;
  
  PhysicsSimulator(this.scene);
  
  void simulate(num dt) {
    const num maxPlayerSpeed = 100;
    
    scene.entities.forEach((Entity entity) {
      entity.components.forEach( (Component component) {
        if(component is PhysicsComponent) {
          vec3 acceleration = 
              new mat4.identity().
              rotateZ(entity.orientation * Math.PI).
              translate(0.0, component.acceleration * maxPlayerSpeed, 0.0).
              getTranslation();
          
          component.speed += acceleration * dt;
          entity.position += component.speed * dt;
          component.acceleration = 0.0;
        }
      });
    });
  }
  
}

