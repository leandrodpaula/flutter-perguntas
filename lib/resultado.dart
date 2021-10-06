import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciarQuestionario;
  Resultado({this.pontuacao, this.reiniciarQuestionario});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Parabéns!',
            style: TextStyle(fontSize: 28),
          ),
          Text(
            'Sua nota é $pontuacao!',
            style: TextStyle(fontSize: 20),
          ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                textStyle:
                    MaterialStateProperty.all(TextStyle(color: Colors.red))),
            child: Text('Reiniciar'),
            onPressed: reiniciarQuestionario,
          ),
        ],
      ),
    );
  }
}
