import 'package:flutter/material.dart';

class SizeBoxWidget extends StatelessWidget {
  const SizeBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SizeBox Widget'),
      ),
      body: Column(
        children: [
          Text('data 001'),
          const SizedBox(
            height: 20,
          ),
          Text('data 002'),
          Text('data 003'),
          const SizedBox(
            height: 5,
          ),
          Container(
            width: double.infinity,
            height: 40,
            color: Colors.amber,
            child: Row(
              children: const [
                Text('data 004'),
                SizedBox(
                  width: 50,
                ),
                Text('data 002'),
              ],
            ),
          ),
          SizedBox(
            height: 80,
            width: 80,
            child: Text('data'),
          )
        ],
      ),
    );
  }
}
