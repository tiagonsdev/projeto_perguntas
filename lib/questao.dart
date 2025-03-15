import 'package:flutter/material.dart';

//classe para alinhar o texto das perguntas

class Questao extends StatelessWidget {
  

  final String texto;

//construtor da classe

  Questao(this.texto);


//atributos da classe

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        texto,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,),
    );
  }
}
