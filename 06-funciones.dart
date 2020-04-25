void main() {
  
  // Invocación (Call) de la función
  String mensaje = saludar2( nombre: 'Fernando', texto: 'Hola' ); // (paramName: value)
  
  print( mensaje );
  
}

// Declaración de Función: TipoRetorno nombreFuncion(argumentos) {}
String saludar({ String texto, String nombre }) { // Parametros con nombre
  return '$texto, $nombre';
}

// Función de una linea
String saludar2({ String texto, String nombre }) => '$texto, $nombre';

// Named Parameters DOC: https://dart.dev/guides/language/language-tour#optional-parameters