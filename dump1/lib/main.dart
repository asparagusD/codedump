import 'package:dump1/form.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "3.2 Flutter Push Pop",
      theme: ThemeData.light(),
      home: MyForm(),
    );
  }
}