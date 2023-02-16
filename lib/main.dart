import 'package:flutter/material.dart';
import 'widget/02-ImageWidget.dart';
import 'widget/03-ContainerWidget.dart';
import 'widget/04-ColumnRowWidget.dart';
import 'widget/05-ListViewWidget.dart';

import 'widget/01-textWidget.dart';
import 'widget/06-App-test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AppCR(),
    );
  }
}

// class MyHome extends StatefulWidget {
//   const MyHome({super.key});

//   @override
//   State<MyHome> createState() => _MyHomeState();
// }

// class _MyHomeState extends State<MyHome> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('ສະແດງຮູບພາບ ຈາກ Network')),
//       body: Center(
//         child: Image.asset('assets/girl.jpg'),
//       ),
//     );
//   }
// }
