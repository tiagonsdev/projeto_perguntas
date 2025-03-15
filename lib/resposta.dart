import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  
  final String texto;

  final void Function() quandoSelecionado;

  //construtor da classe

  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
              onPressed: (){
                quandoSelecionado();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue
              ),
              child: Text(texto,
              style: TextStyle(color: Colors.white),
              ),
            ),
    );}
}