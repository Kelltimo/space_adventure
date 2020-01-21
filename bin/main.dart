import 'dart:io'; 
import 'dart:convert'; 
import 'package:dart_space_adventure/dart_space_adventure.dart';

// Source https://api.dart.dev/stable/2.7.0/dart-io/File-class.html
void main(List<String> argument) {
  File(argument[0]).readAsString().then((String contents) {
    SpaceAdventure(
      planetarySystem: PlanetarySystem.fromMap(jsonDecode(contents))
      ).start(); 
  }); 

}