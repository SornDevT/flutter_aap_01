import 'package:flutter/material.dart';

class SideBarWidget extends StatefulWidget {
  const SideBarWidget({super.key});

  @override
  State<SideBarWidget> createState() => _SideBarWidgetState();
}

class _SideBarWidgetState extends State<SideBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Side Bar'),
      ),
      body: Center(
        child: Text('Sile Bar Menu'),
      ),
      drawer: NavigatorDrawer(),
    );
  }
}

class NavigatorDrawer extends StatelessWidget {
  const NavigatorDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
            child: Column(
          children: [
            BuildHeader(context),
            BuildMenuItem(context),
          ],
        )),
      );

  Widget BuildHeader(BuildContext context) => Container(
        width: double.infinity,
        // height: 200,
        color: Colors.blue,
        child: Padding(
          padding: EdgeInsets.only(
            top: 25 + MediaQuery.of(context).padding.top,
            bottom: 25,
          ),
          child: Column(children: const [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'SornDev',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text('sondev.teach@gmail.com',
                style: TextStyle(fontSize: 14, color: Colors.white))
          ]),
        ),
      );

  Widget BuildMenuItem(BuildContext context) => Container(
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: Text('ໜ້າທຳອິດ'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.favorite_outline),
              title: Text('ສີ່ງທີ່ມັກ'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.workspaces),
              title: Text('ແຜນວຽກ'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: Text('ແຈ້ງເຕືອນ'),
              trailing: Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), color: Colors.red),
                child: Text(
                  '5',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              onTap: () {},
            ),
            const Divider(
              color: Colors.black45,
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: Text('ອອກຈາກລະບົບ'),
              onTap: () {},
            ),
          ],
        ),
      );
}
