void main() {
  print('inicio app');

  http('https://medium.com/flutter-community/dart-what-are-mixins-3a72344011f3')
      .then((value) {
        print(value);
      }).catchError((e){
    print('Error: $e');
  });
  print('termino app');
}

Future<String> http(String url) {
  return Future.delayed(const Duration(seconds: 1), () {
    //throw 'Error http';
    return url;
  });
}
