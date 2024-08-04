import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {

  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  String name = "dex";
  String accountEmail = "dex@cmru";
  @override
  Widget build(BuildContext context) {
return Drawer(
  child: Column(
    children: [
      UserAccountsDrawerHeader(
       currentAccountPicture: CircleAvatar(
        child: Icon(Icons.account_circle),
       ),
        accountName: Text("$name"), 
        accountEmail: Text("$accountEmail")
        ),
        ListView(
          shrinkWrap: true,
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {

              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("settings"),
              onTap: () {

              },
            ),
            ListTile(
              leading: Icon(Icons.folder_delete),
              title: Text("About"),
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
              trailing: Icon(Icons.chevron_right),

            ),
          ],
        )
    ],
  )

);
  }
}