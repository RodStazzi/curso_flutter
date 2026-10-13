import 'package:flutter/material.dart';

const Color _custom = Color.fromARGB(255, 255, 0, 204);
const List<Color> customThemes = [
  _custom,
  Colors.yellowAccent,
  Colors.greenAccent,
  Colors.blueAccent,
  Colors.red,
  Colors.black,
  Colors.white
];

class AppTheme {

final int selector;

AppTheme({this.selector = 0})
:assert(
selector >= 0 && selector < customThemes.length, 'El selector debe estar entre 0 y ${customThemes.length - 1}'
);

    ThemeData theme(){
      return ThemeData(useMaterial3: true, 
      colorSchemeSeed: customThemes[selector],
      //brightness: Brightness.dark,
      );
    }
}