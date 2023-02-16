import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ສະແດງຂໍ້ຄວາມ')),
      body: Text(
        'test text',
        style: TextStyle(fontSize: 50),
      ),
    );
  }
}
