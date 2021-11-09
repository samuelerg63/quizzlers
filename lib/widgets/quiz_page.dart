import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {

    List<Icon> scoreKeeper = const [
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


    Widget textButton (Color color, String texto, Icon icono){  

       return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),
      ),
      onPressed: () {
        setState(() {
          scoreKeeper.add(icono);
        });
        //iconos.scoreKeeper.add(this.icono);
      },
      child: Text(
        texto,
        style: const TextStyle(
            color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
      ),
    );};

  

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _Texto(),
        textButton(Colors.green, 'BIEN', Icon(Icons.check)),
        SizedBox(height: 5,),
        textButton(Colors.red, 'Mal', Icon(Icons.close)),
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

