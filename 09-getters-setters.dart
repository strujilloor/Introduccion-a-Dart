void main() {
  // Instancia de la clase
  final cuadrado = new Cuadrado();
  // setear el valor de una propiedad de la clase
  cuadrado.lado = 10;
  
  print( cuadrado ); // output: Lado: 10.0
  // get la propiedad de la clase
  print( 'área: ${ cuadrado.area }' ); // output: área: 100.0
  // note: que al usar la notación de punto debemos utilizar los corchetes
}


class Cuadrado {
  
  double _lado; // propiedad privada
  
  // set pripiedad(tipo valor) {}
  set lado( double valor ) {
    if ( valor <= 0 ) { // no se puede asignar un valor menor o igual a cero al lado
      throw('El lado no puede ser menor o igual a 0'); // lanzar error
    }
    // asignar el valor a la propiedad
    _lado = valor;
  }
  
  // tipo get propiedad{}     note: los getters no llevan parentesis
  double get area => _lado * _lado; // =>  ya que es una función de una sola linea
  
  // Sobreescribir método toString()
  toString() => 'Lado: $_lado';
  
}