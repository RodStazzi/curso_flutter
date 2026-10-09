void main() async {
  print('Iniciando aplicación...');

  // Future -> devuelve un único valor
  String usuario = await obtenerUsuario();
  print('Usuario: $usuario');

  print('\nIniciando descarga de archivos...\n');

  // Stream -> devuelve varios valores
  await for (final progreso in descargarArchivos()) {
    print(progreso);
  }

  print('\nDescarga completada');
}

// FUTURE
Future<String> obtenerUsuario() async {
  await Future.delayed(Duration(seconds: 2));

  return 'Rodolfo';
}

// STREAM + ASYNC*
Stream<String> descargarArchivos() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));

    yield 'Archivo $i descargado';
  }
}
