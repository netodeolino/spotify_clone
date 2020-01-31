import 'package:flutter/material.dart';
import 'package:spotify_clone/app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify Clone',
      debugShowCheckedModeBanner: false,
      home: AppPage(),
      theme: ThemeData(
        fontFamily: 'ProximaNova'
      ),
    );
  }
}

