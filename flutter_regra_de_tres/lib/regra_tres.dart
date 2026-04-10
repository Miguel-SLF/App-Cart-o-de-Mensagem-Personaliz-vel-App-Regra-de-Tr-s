import 'package:flutter/material.dart';

class RegraTres extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RegraTresState();
  }
}

class _RegraTresState extends State<RegraTres> {
  String _resultado = "Resultado";
  var numA = TextEditingController();
  var numB = TextEditingController();
  var numC = TextEditingController();

  void _calcularRegra() {
    setState(() {
      double? a = double.tryParse(numA.text);
      double? b = double.tryParse(numB.text);
      double? c = double.tryParse(numC.text);

      if (a == null || b == null || c == null) {
        _resultado = "Erro: Campo(s) vazio(s) !";
      } else {
        if (a != 0) {
          var x = (b * c) / a;

          if (x is int) {
            _resultado = "X = ${x.toStringAsFixed(0)}";
          } else {
            _resultado = "X = ${x.toStringAsFixed(2)}";
          }
        } else {
          _resultado = "Erro: A não pode ser zero !";
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextFieldComponent(texto: "A", numeroController: numA),

            TextComponent(
              texto: "está para",
              tamanhoFonte: 15,
              estiloFonte: FontWeight.w500,
            ),

            TextFieldComponent(texto: "B", numeroController: numB),
          ],
        ),

        SizedBox(height: 50),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextComponent(
              texto: "assim como",
              tamanhoFonte: 20,
              estiloFonte: FontWeight.bold,
            ),
          ],
        ),

        SizedBox(height: 50),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextFieldComponent(texto: "C", numeroController: numC),

            TextComponent(
              texto: "está para",
              tamanhoFonte: 15,
              estiloFonte: FontWeight.w500,
            ),

            SizedBox(
              width: 120,
              child: Text(
                "X",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),

        SizedBox(height: 50),

        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.primary,
            elevation: 8,
            padding: EdgeInsets.symmetric(horizontal: 35, vertical: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          onPressed: _calcularRegra,
          child: Text(
            "Calcular X",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),

        SizedBox(height: 50),

        TextComponent(
          texto: _resultado,
          tamanhoFonte: 28,
          estiloFonte: FontWeight.bold,
        ),
      ],
    );
  }
}

class TextComponent extends StatelessWidget {
  final String texto;
  final double tamanhoFonte;
  final FontWeight estiloFonte;

  const TextComponent({
    super.key,
    required this.texto,
    required this.tamanhoFonte,
    required this.estiloFonte,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: TextStyle(
        fontSize: tamanhoFonte,
        color: Theme.of(context).colorScheme.primary,
        fontWeight: estiloFonte,
      ),
    );
  }
}

class TextFieldComponent extends StatelessWidget {
  final String texto;
  final TextEditingController numeroController;

  const TextFieldComponent({
    super.key,
    required this.texto,
    required this.numeroController,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.numberWithOptions(
          signed: true,
          decimal: true,
        ),
        controller: numeroController,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          alignLabelWithHint: true,
          labelText: texto,
        ),
      ),
    );
  }
}
