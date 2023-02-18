import 'package:flutter/material.dart';

class ListViewBuilderWidget extends StatelessWidget {
  ListViewBuilderWidget({super.key});

  final List<String> items =
      List<String>.generate(30, (index) => "Item ${++index}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Builder'),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  leading: Icon(Icons.account_circle_outlined),
                  title: Text("ລາຍການ ${items[index]}"),
                  subtitle: Text('app 123'),
                  trailing: Icon(Icons.access_alarm),
                ),
                Divider(
                  height: 4,
                  color: Colors.grey.shade500,
                )
              ],
            );
          }),
    );
  }
}
