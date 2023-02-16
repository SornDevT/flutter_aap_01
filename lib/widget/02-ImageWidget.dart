import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ສະແດງຮູບພາບ ຈາກ Network ແລະ ໃນເຄື່ອງ')),
      body: ListView(
        children: [
          Column(
            children: [
              Text('ຮູບພາບຈາກເຄື່ອງ:'),
              Image.asset('assets/girl.jpg'),
              Text('ຮູບພາບ Network:'),
              Image.network(
                  'https://st.depositphotos.com/1017986/3059/i/450/depositphotos_30595097-stock-photo-student-girl-studying-at-school.jpg'),
            ],
          )
        ],
      ),
    );
    ;
  }
}
