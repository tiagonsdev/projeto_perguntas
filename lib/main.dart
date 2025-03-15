import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

//metodo principal é aqui q tudo começa

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp>{
  var _perguntaSelecionada = 0;

  //aqui é o metodo que vai ser chamado quando o botão for pressionado para responder a pergunta

  void _responder(){
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
Widget build(BuildContext context) {


// aqui são as perguntas que vão ser feitas no app

  final perguntas = [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': ['Preto', 'Vermelho','Verde','Branco'],
    },
    {
      'texto':  'Qual é o seu animal favorito?',
      'respostas': ['Coelho', 'Cobra','Elefante','Leão'],
    },
    {
      'texto': 'Qual é o seu genero de musica favorito?',
      'respostas': ['Indie', 'Rock','Mpb','Samba'],
    },
  ];

  //aqui é a lista de respostas que vão ser feitas no app

  List<String> respostas = perguntas[_perguntaSelecionada].cast()['respostas'];

  //aqui são as partes da interfaces do app, lembra um pouco html

  return MaterialApp(

    //aqui é o corpo do app
    home: Scaffold(
      appBar: AppBar(
        //aqui é o titulo do app
        title: Text('Perguntas'),
      ),
      //aqui é a coluna do app do qual sera feito as perguntas
      body: Column(
        children: [
          Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
        //aqui é a lista de respostas usando o map para mapear as respostas
         ...respostas.map((t) => Resposta(t,_responder)), 
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