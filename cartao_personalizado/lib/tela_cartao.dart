import 'package:cartao_personalizado/cartao_personalizado.dart';
import 'package:flutter/material.dart';

class TelaCartao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cartão de Visitas Personalizável"),
        backgroundColor: Colors.white,
      ),
      body: CartaoPersonalizado(),
      backgroundColor: Colors.white,
    );
  }
}
