import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.school,
          size: 30,
        ),
        title: Text('AppBar Widget'),
        iconTheme: const IconThemeData(color: Colors.amber),
        centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 18, color: Colors.white),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return const [
                PopupMenuItem<int>(
                  value: 0,
                  child: Text('ບັນຊີຂອງຂ້ອຍ'),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: Text('ການຕັ້ງຄ່າ'),
                ),
                PopupMenuItem<int>(
                  value: 2,
                  child: Text('ອອກຈາກລະບົບ'),
                ),
              ];
            },
            onSelected: (vale) {
              // print(vale);
              if (vale == 0) {
                print('ເຂົ້າໄປໜ້າ ບັນຊີຂອງຂ້ອຍ');
              } else if (vale == 1) {
                print('ເຂົ້າໄປໜ້າ ຕັ້ງຄ່າ');
              } else if (vale == 2) {
                print('ອອກຈາກລະບົບ');
              }
            },
          )
        ],
        // elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25)),
        ),
      ),
      body: Center(
        child: Text('data'),
      ),
    );
  }
}
