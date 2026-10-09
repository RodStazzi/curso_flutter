void main() {
  final Automovil toyota = Automovil("Corsa", 270);
  print("Vehiculo: ${toyota.name}, Velocidad: ${toyota.velocidad}");
}

class Automovil {
  String? name;
  int? velocidad;

  Automovil(String vName, int vVelocidad)
    : this.name = vName,
      this.velocidad = vVelocidad;


}
