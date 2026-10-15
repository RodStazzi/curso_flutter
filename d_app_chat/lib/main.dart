import 'package:flutter/material.dart';
import 'package:d_app_chat/config/theme/app_theme.dart';  

import 'package:d_app_chat/routes/routes.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Rosta Chat',
  //     debugShowCheckedModeBanner: false,
  //     theme: AppTheme(selector: 4).theme(),
  //     home: Scaffold(
  //       appBar: AppBar(
  //         title: Text('Rosta Chat'),
  //         centerTitle: true,
  //       ),
  //       body: Center(
  //         child: FilledButton(onPressed: () {}, child: Text('Iniciar Chat'))
  //       ),
  //     )
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Rosta Chat',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selector: 4).theme(),
      initialRoute: AppRoutes.initialRoute,
      getPages: AppRoutes.pages
    );
  }
}


