import 'package:flutter/material.dart';

class StackLayoutWidget extends StatelessWidget {
  const StackLayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Layout Widget'),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.network(
              'https://img.freepik.com/free-photo/portrait-beautiful-young-business-asian-woman-with-smart-mobile-phone-coffee-cup_74190-11890.jpg?w=360&t=st=1676724252~exp=1676724852~hmac=61505134cd7024d7a43d52ce715cb530d907d0d152e5c922e2a9a0d58500d498'),
          Positioned(

              // top: 100,
              right: 50,
              bottom: 0,
              child: Container(
                width: 150,
                height: 150,
                color: Colors.black45,
                child: Text(
                  'data2',
                  style: TextStyle(color: Colors.blue, fontSize: 25),
                ),
              )),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 100,
              height: 50,
              color: Colors.blue.shade300,
              child: Text('Stack 3'),
            ),
          ),
        ],
      ),
    );
  }
}
