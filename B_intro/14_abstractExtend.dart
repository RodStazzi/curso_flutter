
void main() {
  final cajero = Cajero(
    nombre: 'Juan',
    cantidad: 0,
    type: Categorias.lacteos,
  );
cajero.cantidadVendida(3);
  cajero.cantidadVendida(7.9);
  print(cajero.nombre);
  print("Cantidad dia: ${cajero.cantidad}");
}

enum Categorias { lacteos, aseo, frutas }

abstract class TiendaMass {
  String nombre;
  double cantidad;
  Categorias type;

  TiendaMass({
    required this.nombre,
    required this.cantidad,
    required this.type,
  });
}

class Cajero extends TiendaMass {
  Cajero({
    required String nombre,
    required double cantidad,
    required Categorias type,
  }) : super(nombre: nombre, cantidad: cantidad, type: type);
  
  @override
  void cantidadVendida(double cant) {
    cantidad += cant;
    print("Cantidad Total: $cant");
  }
}
