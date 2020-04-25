// tipo funcionName async { ... await ...}
void main() async {
  
	print('Estamos a punto de pedir datos...');
  
  String data = await httpGet('https://api.nasa.com/aliens');
  
  print( data );
  
  print('Ultima línea');
}



Future<String> httpGet(String url) {
  
  return Future.delayed( new Duration( seconds: 4 ), () {
    return 'Hola Mundo';
  });
  
}

/**
 * NOTE: Use try, catch, and finally to handle errors and cleanup in code that uses await:
 * try {
 *     String data = await httpGet('https://api.nasa.com/aliens');
 * } catch (e) {
 *     ...
 * }
 * */ 