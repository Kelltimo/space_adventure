import 'dart:math'; 
import 'planet.dart';

class PlanetarySystem {

  final Random _random = Random(); 
  final String name; 
  final List<Planet> planets; 
  PlanetarySystem({this.name = "Unnamed Systems", this.planets = const[]}); 

  // getter for number of planets 
  
  int get numberOfPlanets => planets.length; 

  // getter for checking number of planets not empty
  bool get hasPlanets => planets.isNotEmpty; 
  
  static PlanetarySystem fromMap(Map<String,dynamic> jsonMap) => PlanetarySystem(
      name: jsonMap['name'], 
      planets: Planet.fromMaps(jsonMap['planets'])
    ); 

  Planet randomPlanet() {
    if (!hasPlanets) return Planet.nullPlanet(); 
    return planets[_random.nextInt(planets.length)]; 
  }

  Planet planetWithName(String name) {
    return planets.firstWhere(
      (planet) => planet.name == name, 
    orElse: () => Planet.nullPlanet()
    ); 
  }
}


