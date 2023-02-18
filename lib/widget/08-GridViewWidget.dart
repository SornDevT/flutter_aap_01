import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView'),
      ),
      body: Padding(
        padding: EdgeInsets.all(4),
        child: GridView.count(
          crossAxisCount: 3, children: _buildGrid(30),
          //[

          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     color: Colors.amber,
          //     child: Text('01'),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     color: Colors.amber,
          //     child: Text('02'),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     color: Colors.amber,
          //     child: Text('03'),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     color: Colors.amber,
          //     child: Text('04'),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     color: Colors.amber,
          //     child: Text('05'),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     color: Colors.amber,
          //     child: Text('06'),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     color: Colors.amber,
          //     child: Text('07'),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     color: Colors.amber,
          //     child: Text('07'),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     color: Colors.amber,
          //     child: Text('07'),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     color: Colors.amber,
          //     child: Text('07'),
          //   ),
          // ),
          // ],
        ),
      ),
    );
  }

  List<Container> _buildGrid(int count) {
    return List.generate(
      count,
      (index) => Container(
        margin: EdgeInsets.all(4),
        color: Colors.blue.shade300,
      ),
    );
  }
}
