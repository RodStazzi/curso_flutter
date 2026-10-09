import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  print('Inicio de la consulta');

  await obtenerUsuario();

  print('Fin del programa');
}

Future<void> obtenerUsuario() async {
  try {
    final url = Uri.parse(
      'https://jsonplaceholder.typicode.com/users/1',
    );

    final response = await http.get(url);

    // ------------------------------
    // DESCOMENTAR PARA GENERAR ERROR
    // throw Exception('Error generado manualmente');
    // ------------------------------

    if (response.statusCode != 200) {
      throw Exception(
        'Error HTTP: ${response.statusCode}',
      );
    }

    final usuario = jsonDecode(response.body);

    print('Nombre: ${usuario['name']}');
    print('Email: ${usuario['email']}');

    // ------------------------------
    // DESCOMENTAR PARA GENERAR ERROR
    // print(usuario['direccion']['calle']);
    // La clave "direccion" no existe.
    // ------------------------------
  }

  on Exception catch (e) {
    print('Capturado con on Exception');
    print(e);
  }

  catch (e, stackTrace) {
    print('Capturado con catch genérico');
    print(e);

    // Muestra el detalle técnico del error
    print(stackTrace);
  }

  finally {
    print('Finally ejecutado');
    print('Liberando recursos...');
  }
}
