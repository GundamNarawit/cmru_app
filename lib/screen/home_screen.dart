import 'package:cmru_app/widget/my_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String name = "narawit";
  String accountEmail = "narawit1222@gmail.com";
  void changeName() {
    setState(() {
      name = "Gundam";
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
drawer:MyDrawer(),
      appBar: AppBar(
        title: const Text(
          'HOMEIE',
          style: TextStyle(color: Colors.white)
          ),
        backgroundColor:Colors.blue,
      ),        
  body:Center(
        child: Text("Hello $name")
    ),
floatingActionButton: FloatingActionButton(
  onPressed: changeName,
  child: Icon(Icons.add),
),
    );
  }
}