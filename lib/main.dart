import 'package:flutter/material.dart';
import 'package:music_app/pages/HomePage.dart';
import 'package:music_app/pages/MusicPage.dart';
import 'package:music_app/pages/PlayListPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context) => MyHomePage(),
        "playlistPage" : (context) => PlayListPage(),
        "musicPage" : (context) => MusicPage(),
      },
    );
  }
}

