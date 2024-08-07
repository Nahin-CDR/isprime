
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int number = 0;
  TextEditingController editingController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        title: const Text("Prime Number Checker App"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Your Number "),
            const SizedBox(height: 100),

          ],
        ),
      ),
    );
  }
}
