void main() {
  
  // Declaración de Listas
  List<int> numeros = [1,2,3,4,5]; // Lista de solo numeros - la lista no tiene limite
  print( numeros ); // output: [1,2,3,4,5]
  
  // Agregar valores a la Lista
  numeros.add(6);
  print( numeros ); // output: [1,2,3,4,5,6]
  
  
  // Listas Tamaño fijo
  List masNumeros = new List(10);
  print( masNumeros ); // output: [null,null,null ...] x10
  // masNumeros.add(1); Esto no es correcto, no puede crecer más
  masNumeros[0] = 1; // podemos asignar valores
  print( masNumeros ); // output: [1,null,null ...]
  
}