# A Dart package for prime number checking

The isprime package offers a simple and efficient way to check if a given number is prime. Designed for Dart and Flutter developers, this package provides a straightforward function that takes an integer as input and returns a boolean indicating whether the number is a prime number. It's optimized for performance and ease of use, making it an ideal choice for applications requiring prime number validation, mathematical computations, and educational purposes. Incorporating isprime into your project will streamline your development process when dealing with number theory-related tasks.

# Authors
@nahin.cdr@gmail.com

# Features
Simple Interface: A straightforward function that accepts an integer and returns a boolean.
Performance Optimized: Uses an efficient algorithm for prime checking, suitable for large numbers.
Cross-Platform: Works with any Dart project including Flutter apps, web, and backend.
Lightweight: No external dependencies, making it easy to integrate into any project.
Comprehensive Documentation: Includes detailed usage instructions and examples.

# FAQ

1.Can isprime handle very large numbers?

A: The package is optimized for performance but is subject to Dart's limitations on integer sizes. For extremely large numbers, performance may vary.

2. Is isprime suitable for educational purposes?

A: Absolutely! It's a great tool for learning about prime numbers and algorithms in a practical setting.

3. How can I contribute to isprime?

A: Contributions can range from bug fixes, feature additions, documentation improvements, and more. See the Contributing section above for how to get started.

Demo
To see isprime in action, here is a simple Flutter app snippet:

```


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
    print("${primeChecker.isPrime(value)}");
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

```
