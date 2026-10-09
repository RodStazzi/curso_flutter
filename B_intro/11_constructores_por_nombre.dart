void main() {
  
  final Map<String,dynamic> jsonDecode = {
    "name": "AULA COMÚN",
    "cantidadLibros": 167,
    "abierta": true
  };
  
    final Map<String,dynamic> jsonDecode2 = {
    "name": "ROSTA"
  };

  final library = biblioteca(
  name: 'The Library', cantidadLibros: 48, abierta: false
  );
  
  final library2 = biblioteca(
  name: jsonDecode["name"], cantidadLibros: jsonDecode["cantidadLibros"], abierta: jsonDecode["abierta"]
  );
  
    final library3 = biblioteca.fromJson(jsonDecode2);
  
  print('Biblioteca: $library');
  print('Biblioteca: $library2');
  print('Biblioteca: $library3');
}

class biblioteca {
  String name;
  int cantidadLibros;
  bool abierta;

  biblioteca({required this.name, this.cantidadLibros = 10, required this.abierta});

  biblioteca.fromJson(Map<String, dynamic> json)
    :name = json['name'] ?? 'No Encontrado',
     cantidadLibros = json['cantidadLibros'] ?? 1,
     abierta = json['abierta'] ?? false;

  
  @override
  String toString(){
    return "Biblioteca $name. Tenemos a disposición más de ${cantidadLibros -1} libros. ${!abierta ? "Ven y acércate de Lunes a Viernes de 9 a 18 hrs \n" : "En este momento estamos disponibles para atenderte"} \n";
  }
  
}
