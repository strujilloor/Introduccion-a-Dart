void main() {
  
  final Heroe superman = new Heroe(poder: "Volar", nombre: "Clark Kent", valentia: 10);
  
  final Villano luthor = new Villano();
  luthor.nombre  = 'Lex Luthor';

  print(superman); // output: Clark Kent, volar, 10
}


// Super Clase
abstract class Personaje { // las clases abstractas no pueden ser instanciadas 
  String poder;
  String nombre;

  Personaje({ this.poder, this.nombre }); 

  @override
  String toString() {
    return '$nombre, $poder';
  }
}

// al extender de la clase Personaje, Heroe ya contiene las propiedades de poder y nombre
class Heroe extends Personaje { 
  int valentia;

  // Parametros con nombre en clases que extienden de super clases:
  Heroe({ String poder, String nombre, this.valentia }) : super(poder: poder, nombre: nombre);

  @override
  String toString() {
    return super.toString() + ', $valentia';
  }
}

class Villano extends Personaje {
  int maldad;
}

// Documentation: https://dart.dev/guides/language/language-tour#extending-a-class
