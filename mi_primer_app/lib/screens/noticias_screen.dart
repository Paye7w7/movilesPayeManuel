import 'package:flutter/material.dart';

class Noticias extends StatelessWidget {
  const Noticias({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(title: Text('Material App Bar')),
        body: Center(child: Container(child: Text('Hello World'))),
      ),
    );
  }
}