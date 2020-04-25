void main() {
  
  
  // Declarar Map (llave: valor)
  Map<String, dynamic> persona = {
    'nombre' : 'Carlos',
    'edad'   : 32,
    'soltero': true
  };
  
  // Si quiero imprimir el nombre: 
  print( persona['nombre'] ); // note: no podemos usar la notación de punto, por que estaríamos haciendo referencia alguna propiedad de Map como tal 
  print( persona['edad'] ); // output: 32
  
  // No necesariamente tiene que ser un String la llave, puede ser cualquier cosa
  String propiedad = 'soltero';
  print( persona[ propiedad ] ); // note: he aquí la clave, lo hace dinamico :D
  
  
  Map<int, String> personas = {
    1: 'Tony',
    2: 'Peter',
    9: 'Strange' // no necesita ser consecutivo 
    // '10': 'Juan' no es valido!
  };


  // Agregar elementos al Map:
  personas.addAll( { 4: 'Banner'  } );
  
  print( personas ); // output: {1: Tony, 2: Peter, 0:Strange, 4: Banner}
  // Obtener el valor de una key especifica:
  print( personas[2] ); // output: Peter
  
  
}