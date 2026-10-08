void main() {

  final fibonacci = [1,2,3,5,8];
  print("Lista: $fibonacci");
  
  print("Longitud: ${fibonacci.length}");
  
  print("Posición : ${fibonacci[4]}");
  
  print("Primero : ${fibonacci.first}");
  
  print("Reversa : ${fibonacci.reversed}");
  
  print("Último : ${fibonacci.reversed.first}");
  
  //iterando
  
  final par = fibonacci.where((x){
    return (x%2) == 0;
  });
  print("Solo los pares de Fibonacci: ${par}");
  
    final pares = fibonacci.where((x){
    return (x%2) == 0 && x > 5;
  });
  
  print("Pares y > a 5: ${pares.toSet()}");
}