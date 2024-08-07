library isprime;
import 'dart:math';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;

  // code to check prime numbers
  bool isPrime(int value) {
    if (value <= 1) {
      return false;
    }
    for (int i = 2; i <= sqrt(value); i++) {
      if (value % i == 0) return false;
    }
    return true;
  }
}
