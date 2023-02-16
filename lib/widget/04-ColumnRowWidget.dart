import 'package:flutter/material.dart';

class ColumnRuwWidget extends StatelessWidget {
  const ColumnRuwWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column & Row Widget'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Text 01'),
            Text('Text 02'),
            Container(
              height: 200,
              child: Text('Container text'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Row01'),
                Text('Row02'),
                Text('Row03'),
                Text('Row04'),
              ],
            )
          ]),
    );
  }
}
