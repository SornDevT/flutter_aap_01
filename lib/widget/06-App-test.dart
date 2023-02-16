import 'package:flutter/material.dart';

class AppCR extends StatelessWidget {
  const AppCR({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Column & Row'),
      ),
      body: Container(
          decoration: BoxDecoration(border: Border.all(width: 1)),
          height: 120,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.account_circle_rounded,
                size: 70,
              ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Piter Smith'),
                  Text('ທີ່ຢູ່: ແຂວງອຸດົມໄຊ'),
                  Row(
                    children: const [
                      Icon(Icons.train),
                      Icon(Icons.access_time),
                      Icon(Icons.accessibility_new_rounded),
                    ],
                  ),
                ],
              )
            ],
          )),
    );
  }
}
