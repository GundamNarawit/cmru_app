import 'package:cmru_app/screen/about_screen.dart';
import 'package:cmru_app/screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gundam On top',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 7, 29, 228)),
        useMaterial3: true,
      ),
      initialRoute: '/home',

      routes: {
        '/home': (context) => const HomeScreen(),
        '/about': (context) => const AboutScreen(),
      },



    );
  }
}


