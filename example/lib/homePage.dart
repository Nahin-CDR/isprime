
import 'package:flutter/material.dart';
import 'package:isprime/isprime.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int inputNumber = 0;
  CheckPrime primeChecker = CheckPrime();

  TextEditingController editingController = TextEditingController();

  void checkPrime(int value)
  {
    print("${primeChecker.isPrime(9)}");
    setState(() {
      inputNumber = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Prime Checker"),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("$inputNumber is prime : ${primeChecker.isPrime(inputNumber)}"),
                  TextField(
                      maxLength: 3,
                      keyboardType: TextInputType.number,
                      controller: editingController,
                      onChanged: (text) {
                        Future.delayed(const Duration(milliseconds: 500),(){
                          if(text.isNotEmpty){
                            checkPrime(int.parse(text));
                          }
                        });
                      })
                ]
            )
        )
    );
  }
}
