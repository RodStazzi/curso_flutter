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
  String get nombre;
  double get cantidad;
  Categorias get type;

}

class Cajero implements TiendaMass {
  
  @override
  String nombre;
  
  @override
  double cantidad;
  
  @override
  Categorias type;
  
  Cajero({
    required this.nombre,
    required this.cantidad,
    required this.type,
  });
  
  @override
  void cantidadVendida(double cant) {
    cantidad += cant;
    print("Cantidad Total: $cant");
  }
}
