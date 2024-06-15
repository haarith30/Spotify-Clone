// ignore_for_file: deprecated_member_use, depend_on_referenced_packages, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'spotify.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily:
            'spotifyfonts', // Set the custom font family for the light theme
      ),
      darkTheme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontFamily: 'spotifyfonts',
          ),
          bodyText2: TextStyle(
            fontFamily: 'spotifyfonts',
          ),
        ),
      ),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: SpotifyApp(),
    );
  }
}
