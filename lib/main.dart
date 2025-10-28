import 'package:flutter/material.dart';
import 'View/amigosView.dart';
import 'View/resultadoView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Números Amigos',
      initialRoute: '/',
      routes: {
        '/': (context) => AmigosView(),
        '/resultado': (context) => ResultadoView(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
