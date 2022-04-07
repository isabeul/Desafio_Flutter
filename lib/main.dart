import 'package:flutter/material.dart';

import 'home_screen/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
       theme: ThemeData.light(),
       darkTheme: ThemeData.dark(),
    ),
  );
}