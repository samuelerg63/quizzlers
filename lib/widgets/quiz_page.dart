import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {


    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _Texto(),
        _Caja(
          color: Colors.green,
          texto: 'True',
          icono: Icon(Icons.check),
        ),
        _Caja(
          color: Colors.red,
          texto: 'False',
          icono: Icon(Icons.close),
        ),
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}

class _Texto extends StatelessWidget {
  const _Texto({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Expanded(
        flex: 5,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Center(
            child: Text(
              'This where the question text will go',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0, color: Colors.white),
            ),
          ),
        ));
  }
}

class _Caja extends StatefulWidget {
  final Color color;
  final String texto;
  final Icon icono;

  const _Caja({
    Key? key,
    required this.color,
    required this.texto,
    required this.icono,
  });

  @override
  State<_Caja> createState() => _CajaState();
}

class _CajaState extends State<_Caja> {
  @override
  Widget build(BuildContext context) {
    final textButton = TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(this.widget.color),
      ),
      onPressed: () {
        setState(() {
          
          

        });
        //iconos.scoreKeeper.add(this.icono);
      },
      child: Text(
        this.widget.texto,
        style: const TextStyle(
            color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
      ),
    );

    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: textButton,
      ),
    );
  }
}

Icon lista (){

  List scoreKeeper = [];
  return List<Icon> scoreKeeper = [
    Icon(
      Icons.check,
      color: Colors.green,
    ),
    Icon(
      Icons.check,
      color: Colors.green,
    ),
    Icon(
      Icons.check,
      color: Colors.green,
    ),
    Icon(
      Icons.check,
      color: Colors.green,
    ),
  ];

}
