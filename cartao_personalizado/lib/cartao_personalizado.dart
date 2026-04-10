import 'package:flutter/material.dart';

class CartaoPersonalizado extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _cartaoPersonalizadoState();
  }
}

class _cartaoPersonalizadoState extends State<CartaoPersonalizado> {
  var Texto1 = TextEditingController();
  var Texto2 = TextEditingController();
  var Texto3 = TextEditingController();
  var Texto1Base = "Destinatário";
  var Texto2Base = "Mensagem";
  var Texto3Base = "Remetente";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(40.0),
        child: Column(
          children: [
            //CxTxt1
            SizedBox(
              child: caixa_texto(Texto1: Texto1, TextoLabel: Texto1Base),
            ),

            //CxTxt2
            SizedBox(
              child: caixa_texto(Texto1: Texto2, TextoLabel: Texto2Base),
            ),

            //CxTxt3
            SizedBox(
              child: caixa_texto(Texto1: Texto3, TextoLabel: Texto3Base),
            ),

            //Btn1
            SizedBox(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (Texto1.text.isNotEmpty)
                      Texto1Base = Texto1.text;
                    else
                      Texto1Base = "Insira um Texto válido";
                    if (Texto2.text.isNotEmpty)
                      Texto2Base = Texto2.text;
                    else
                      Texto2Base = "Insira um Texto válido";
                    if (Texto3.text.isNotEmpty)
                      Texto3Base = Texto3.text;
                    else
                      Texto3Base = "Insira um Texto válido";
                  });
                },
                child: Text("Criar Cartão", style: TextStyle(fontSize: 20)),
              ),
            ),
            SizedBox(height: 40),

            // Cartão q Vai ser gerado
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/fundocartao.png"),
                  fit: BoxFit.fill,
                ),
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),

              child: Container(
                padding: EdgeInsets.all(35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      Texto1Base,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      Texto2Base,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 15),
                    Text(
                      Texto3Base,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 14,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),

            //Btn2
            SizedBox(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    Texto1Base = Texto1Base = "Destinatário";
                    Texto2Base = "Mensagem";
                    Texto3Base = "Remetente";
                  });
                },
                child: const Text(
                  "Resetar Cartão",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class caixa_texto extends StatelessWidget {
  final String TextoLabel;
  final TextEditingController Texto1;

  const caixa_texto({
    super.key,
    required this.Texto1,
    required this.TextoLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: Texto1,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: TextoLabel,
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
