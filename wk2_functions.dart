// Task 1
// Write a function called addTwo that takes two numbers as arguments and returns the sum of those two numbers.
// Task 2
// Write a function called subtractTwo that takes two numbers as arguments and returns the difference of those two numbers.
// Task 3
// Write a function called multiplyTwo that takes two numbers as arguments and returns the product of those two numbers.
// Task 4
// Write a function called divideTwo that takes two numbers as arguments and returns the quotient of those two numbers.
// Task 5
// Write a function called stringLength that takes an argument of type String and returns the length of that string.
// Task 6
// Write a function called getFirstElement that takes a list as an argument and returns the first element of that list.
import 'dart:io';

// Task 1: Function to add two numbers
int addTwo(int num1, int num2) {
  return num1 + num2;
}

// Task 2: Function to subtract two numbers
int subtractTwo(int num1, int num2) {
  return num1 - num2;
}

// Task 3: Function to multiply two numbers
int multiplyTwo(int num1, int num2) {
  return num1 * num2;
}

// Task 4: Function to divide two numbers
double divideTwo(double num1, double num2) {
  if (num2 != 0) {
    return num1 / num2;
  } else {
    throw Exception('Division by zero is not allowed.');
  }
}

// Task 5: Function to get the length of a string
int stringLength(String word) {
  return word.length;
}

// Task 6: Function to get the first element of a list
dynamic getFirstElement(List myList) {
  if (myList.isEmpty) {
    throw Exception('The list is empty.');
  }
  return myList.first;
}
void main() {
  // Input
  print('Enter the first number:');
  int number1 = int.parse(stdin.readLineSync()!);
  print('Enter the second number:');
  int number2 = int.parse(stdin.readLineSync()!);

  // Task 1: Addition
  int sum = addTwo(number1, number2);
  print('\n Sum: $sum');

  // Task 2: Subtraction
  int difference = subtractTwo(number1, number2);
  print('Difference: $difference');

  // Task 3: Multiplication
  int product = multiplyTwo(number1, number2);
  print('Product: $product');

  // Task 4: Division
  try {
    double quotient = divideTwo(number1.toDouble(), number2.toDouble());
    print('Quotient: $quotient');
  } catch (e) {
    print(e);
  }

  // Task 5: 
  // Prompt the user to input a string
  print('\n Enter a string:');
  String userInput = stdin.readLineSync()!;
  
  // Call the stringLength function with the user-provided string
  int length = stringLength(userInput);
  print('Length of the string: $length');

  // Task 6:
  // getFirstElement function
  List<int> numbers = [1, 2, 3, 4, 5];
  dynamic firstElement = getFirstElement(numbers);
  print('\n $numbers');
  print('First element of the list: $firstElement');
}