import 'package:example/homePage.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const PrimeNumberCheckerApp());
}

class PrimeNumberCheckerApp extends StatefulWidget {
  const PrimeNumberCheckerApp({super.key});

  @override
  State<PrimeNumberCheckerApp> createState() => _PrimeNumberCheckerAppState();
}

class _PrimeNumberCheckerAppState extends State<PrimeNumberCheckerApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
