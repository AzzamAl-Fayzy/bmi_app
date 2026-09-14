import 'package:flutter/material.dart';

import 'form.dart';
import 'modules/bmi_screen/bmi_screen.dart';
import 'modules/login/login.dart';

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
      home: from(),
    );
  }
}
