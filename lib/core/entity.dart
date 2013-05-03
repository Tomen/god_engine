part of god_engine;

class Entity {
  final String name;
  vec3 position;
  double orientation;
  List<Component> components;

  Entity(String this.name, vec3 this.position) {

    components = new List<Component>();
    orientation = 0.0;
    //bodySize = solarSystem.normalizePlanetSize(bodySize);
  }
  
  void addComponent(Component component) {
    components.add(component);
    component.entity = this;
  }
}