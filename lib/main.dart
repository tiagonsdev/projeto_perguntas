import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget{

@override
Widget build(BuildContext context) {

  final perguntas = [
    'Qual é a sua  cor favorita?',
    'Qual é o seu animal favorito?',
  ];

  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Perguntas'),
      ),
      body: Column(
        children: [
          Text(perguntas[0]),
          ElevatedButton(
            child: Text('Resposta 1'),
            onPressed: (){},
          ),
          ElevatedButton(
            child: Text('Resposta 2'),
            onPressed: (){},
          ),
          ElevatedButton(
            child: Text('Resposta 3'),
            onPressed: (){},
          ),
          
        ],
      ),
    ),
  );
}

}