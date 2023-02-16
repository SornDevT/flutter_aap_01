import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container Widget'),
      ),
      body: Container(
        // alignment: FractionalOffset.center,
        width: 150,
        height: 250,
        // color: Colors.amberAccent,
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.only(top: 50, left: 10),
        child: Text(
          'data',
          style: TextStyle(fontSize: 25),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 10),
          // color: Colors.amber,
          gradient: LinearGradient(colors: [Colors.red, Colors.amber]),
        ),
      ),
    );
  }
}
