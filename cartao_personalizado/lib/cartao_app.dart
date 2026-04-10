import 'package:cartao_personalizado/tela_cartao.dart';
import 'package:flutter/material.dart';

class CartaoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cartão de Visitas Personalizável",
      home: TelaCartao(),
      debugShowCheckedModeBanner: false,
    );
  }
}
