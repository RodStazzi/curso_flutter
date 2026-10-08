void main() {
  //  String name = 'Rosta';
  var name = 'Rosta';

  late final nombre; // late final no se puede cambiar
  nombre = 'Rosta';
  const line = '¿como estas?';

  print('Que talca: $name $nombre ${line.toUpperCase()} ${4+5}');
}