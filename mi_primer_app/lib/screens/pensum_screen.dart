import 'package:flutter/material.dart';

class Pensum extends StatelessWidget {
  const Pensum({super.key});
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