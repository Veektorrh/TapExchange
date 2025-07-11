import 'package:flutter/material.dart';
import 'package:flutter_application_1/material_homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(colorScheme: ColorScheme.light(primary: const Color.fromARGB(255, 171, 211, 243))),
      home:MaterialAppHomepage(),
    );
  }
}