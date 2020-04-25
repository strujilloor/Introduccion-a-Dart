
void main() {
  
  // Instancia de la clase
  final wolverine = new Heroe( // new no es obligatorio
    poder: 'Regeneración',
    nombre: 'Logan'
  );
    
  print( wolverine ); // output: nombre: Logan - poder: Regeneración
  
}

class Heroe {
  
  // Propiedades:
  String nombre;
  String poder;

  // Constructor Normal:
  // Heroe({ String nombre = 'Sin Nombre', String poder }) {
  //   this.nombre = nombre;
  //   this.poder  = poder; 
  // }
  
  // Constructor Resumido:
  Heroe({ this.nombre, this.poder });
  
  // Sobreescribir el método toString:
  String toString() => 'nombre: $nombre - poder: $poder';
  
}