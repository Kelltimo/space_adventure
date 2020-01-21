class Planet {
  final String name; 
  final String description;

  Planet ({this.name, this.description});  

  Planet.nullPlanet() : name = 'Null', description = 'Null'; 

  static List<Planet> fromMaps(Iterable planetMaps) => List<Planet>.from(
      planetMaps.map(
        (item) => Planet(name: item['name'], description: item['description'])
      )
    ); 
  }

