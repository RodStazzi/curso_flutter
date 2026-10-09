void main() {
  final Automovil toyota = Automovil(name: "Corsa",velocidad: 270);//si borro velocidad adquiere el del constructor
  print("Vehiculo: ${toyota.name}, Velocidad: ${toyota.velocidad}");
  
    print("Clase vehiculo: ${toyota.toString()}");
}

class Automovil {
  String name;
  int velocidad;

  Automovil({required this.name, this.velocidad = 10});


  @override
  String toString() {
    return "Hola, soy de marca $name y puedo llegar a $velocidad kms por hora";
  }

}