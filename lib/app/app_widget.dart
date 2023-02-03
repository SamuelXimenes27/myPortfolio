import 'package:flutter/material.dart';
import 'package:portifolio_web/main.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My Web Portfolio - Samuel Ximenes',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
