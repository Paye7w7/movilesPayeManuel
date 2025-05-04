import 'package:flutter/material.dart';

class Informaciones extends StatelessWidget {
  const Informaciones({super.key});
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