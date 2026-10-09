import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  print('Consultando API...');

  await obtenerUsuario();

  print('Fin');
}

Future<void> obtenerUsuario() async {
  final url = Uri.parse(
    'https://jsonplaceholder.typicode.com/users/1',
  );

  final response = await http.get(url);

  if (response.statusCode == 200) {
    final usuario = jsonDecode(response.body);

    print('Nombre: ${usuario['name']}');
    print('Email: ${usuario['email']}');
  } else {
    print('Error: ${response.statusCode}');
  }
}
