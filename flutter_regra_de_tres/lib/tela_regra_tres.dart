import 'package:flutter_regra_de_tres/regra_tres.dart';
import 'package:flutter/material.dart';

class TelaRegraTres extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Regra de Três", style: TextStyle(color: Colors.white)),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(child: RegraTres()),
    );
  }
}
