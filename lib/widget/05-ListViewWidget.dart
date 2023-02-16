import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Widget'),
      ),
      body: Column(
        children: [
          Text('ListView'),
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Icon(
                  Icons.account_circle,
                  size: 80,
                ),
                Icon(
                  Icons.account_circle,
                  size: 80,
                ),
                Icon(
                  Icons.account_circle,
                  size: 80,
                ),
                Icon(
                  Icons.account_circle,
                  size: 80,
                ),
                Icon(
                  Icons.account_circle,
                  size: 80,
                ),
                Icon(
                  Icons.account_circle,
                  size: 80,
                ),
                Icon(
                  Icons.account_circle,
                  size: 80,
                ),
              ],
            ),
          ),
          Container(
            height: 150,
            child: ListView(
              children: [
                Text('V text'),
                Text('V text'),
                Text('V text'),
                Text('V text'),
                Text('V text'),
                Text('V text'),
                Text('V text'),
                Text('V text'),
                Text('V text'),
                Text('V text'),
                Text('V text'),
                Text('V text'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
