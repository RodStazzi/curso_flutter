void main() {
  
  final rect = Rectangulo(largo: 0, ancho: 7);
  
  print('area: ${rect.area()}');
  print('rect get: ${Rectangulo(largo: 10, ancho: 8).getArea}');

  final rect2 = Rectangulo(largo: 6, ancho: 7);
  rect2.largo = -1; //directo a la variable privada rect2._largo = -1;
  print('area rect2: ${rect2.area()}');
  
}

class Rectangulo {
  double _largo;
  double _ancho;
  
  Rectangulo({
    required double largo,
    required double ancho
  }): assert(largo >= 0), assert(ancho >= 0),
  _largo = largo, _ancho = ancho;
  
  double get getArea {
    return _largo*_ancho;
  }
  
  set largo(double val){
    print('set: $val');
    if (val < 0) throw 'el area debe ser mayor a 0';
      _largo = val;
  }
  
  double area(){
    return _largo*_ancho;
  }
}
