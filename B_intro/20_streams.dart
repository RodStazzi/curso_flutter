//Un Stream en Dart es una secuencia de datos que se van emitiendo a //lo largo del tiempo, en lugar de devolver un único valor como hace //un Future.

//La diferencia clave es:

//Future → devuelve un solo valor en el futuro.
//Stream → devuelve muchos valores en distintos momentos.

void main() async {

  emitNum().listen((v){
    print('Numero: $v');
  });

}

Stream <int> emitNum(){
  return Stream.periodic(const Duration(seconds: 1), (value){
  return value;    
  }).take(10);
}