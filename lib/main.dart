import 'package:flutter/material.dart';
import 'package:flutterfinalproject/wellcomescreen.dart';
import 'package:flutterfinalproject/hello.dart';

main() {

  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    ),
  );
}


