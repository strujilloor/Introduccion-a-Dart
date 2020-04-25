// Importing core libraries
import 'dart:convert'; // paquete para utilizar json.decode()

void main() {
  
  // Json crudo (como nos llega como String):
  final rawJson    = '{ "nombre": "Logan", "poder":"Regeneración" }';
  Map parsedJson = json.decode( rawJson ); // convierte un json en un Map
  
  print( 'parsed Json: $parsedJson' ); // output: parsed Json: {nombre: Logan, poder: Regeneración}
  
  // Instancia mediante un constructor con nombre
  final wolverine = new Heroe.fromJson( parsedJson );
  
  print(wolverine.nombre); // output: Logan
  print(wolverine.poder);  // output: Regeneración
  
}

class Heroe {
  
  // Propiedades
  String nombre;
  String poder;
  
  // Constructor
  Heroe( this.nombre, this.poder );
  
  // Constructor con nombre
	Heroe.fromJson( Map parsedJson ) {
    nombre = parsedJson['nombre']; // acceder al valor de la llave nombre del Map
    poder  = parsedJson['poder'];  // note: no hace falta this
  }
  
}