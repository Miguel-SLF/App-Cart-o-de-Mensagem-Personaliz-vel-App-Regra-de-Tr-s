import 'package:flutter_regra_de_tres/tela_regra_tres.dart';
import 'package:flutter/material.dart';

class RegraTresApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Regra de Três",
      home: TelaRegraTres(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          primary: Colors.deepPurple,
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
