import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded Widget'),
      ),
      body: Column(children: [
        Row(
          children: [
            Expanded(
              child: Text(
                  'data jgihrojrieo jfieorjferiof jiofjeroifj oifrefeof kopfkeropkf eropkf eropf kre egrkegkerpgklrepklg epgklerp lkgreplgk'),
            ),
            // Container(
            //   width: 420,
            //   child: Text('dopfkeropkf erohrhgr ggjt ojtpkf'),
            // ),
            Padding(
              padding: const EdgeInsets.only(right: 4),
              child: Container(
                // padding: EdgeInsets.only(right: 5),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Ok'),
                ),
              ),
            ),
          ],
        ),
        Container(
          width: 120,
          color: Colors.red,
          padding: EdgeInsets.all(8),
          child: Text(
            'App test 001',
            style: TextStyle(color: Colors.white),
          ),
        ),
        Expanded(
          child: Container(
            width: 120,
            color: Colors.grey,
            padding: EdgeInsets.all(8),
            child: Text(
              'App test 002',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Container(
          width: 120,
          color: Colors.blue,
          padding: EdgeInsets.all(8),
          child: Text(
            'App test 003',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ]),
    );
  }
}
