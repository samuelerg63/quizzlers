import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quizzler_app/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quizzler App',
      home: HomePage(),
    );
  }
}
