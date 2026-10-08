void main() {

  print(funcionEj());
  print(adicion(1,7));
  
    print("Suma opcional: ${adicionOp(7)}");
}

String funcionEj() => 'Funcion Ejemplo';

int adicion(int a, int b) => a + b;

int adicionOp(int a, [int? b]) {
  b = b ?? 0;
  b = b + 1;
  
  return a + b;
}