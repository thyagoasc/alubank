import 'package:flutter/material.dart';
import 'package:bank_home/themes/my_theme.dart';
import 'screens/home.dart';

void main() {
  runApp(const Alubank());
}

class Alubank extends StatelessWidget {
  const Alubank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alubank',
      theme: mytheme,
      home: const Home(),
    );
  }
}
