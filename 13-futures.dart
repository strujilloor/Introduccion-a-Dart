void main() {
  
	print('Estamos a punto de pedir datos');
  
  httpGet('https://api.nasa.com/aliens').then( (data) {
    print( data );
  });
  
  print('Ultima línea');
}


// Futures = Promises 
// Future<RetornaUn> nombre() { return ... }
Future<String> httpGet(String url) {
  
  return Future.delayed( new Duration( seconds: 4 ), () { // función anonima
    return 'Hola Mundo';
  });

}

// note: Future.delayed es lo mismo que setTimeout de JS