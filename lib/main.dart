import 'package:flutter/material.dart';
import './questao.dart';

//metodo principal é aqui q tudo começa

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp>{
  var _perguntaSelecionada = 0;

  //aqui é o metodo que vai ser chamado quando o botão for pressionado para responder a pergunta

  void _responder(){
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  @override
Widget build(BuildContext context) {


// aqui são as perguntas que vão ser feitas no app

  final perguntas = [
    'Qual é a sua  cor favorita?',
    'Qual é o seu animal favorito?',
  ];

  //aqui são as partes da interfaces do app, lembra um pouco html

  return MaterialApp(

    //aqui é o corpo do app

    home: Scaffold(

      //aqui é o app bar do app

      appBar: AppBar(

        //aqui é o titulo do app

        title: Text('Perguntas'),
      ),

      //aqui é a coluna do app do qual sera feito as perguntas

      body: Column(
        children: [
          Questao(perguntas[_perguntaSelecionada]),
          ElevatedButton(
            child: Text('Resposta 1'),
            onPressed: _responder,
          ),
          ElevatedButton(
            child: Text('Resposta 2'),
            onPressed: _responder,
          ),
          ElevatedButton(
            child: Text('Resposta 3'),
            onPressed: _responder,
          ),
          
        ],
      ),
    ),
  );
}

}


//aqui é o stateful widget que é um widget que  muda feito para construir interfaces dinamicas do app 

class PerguntaApp extends StatefulWidget{

  //aqui é o metodo que cria o estado do app

  @override
  _PerguntaAppState createState(){
    return _PerguntaAppState();
  }
}