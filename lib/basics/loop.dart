/*
//(===============================Assignment2=========================)
// (Arithmetic Operations - Loops - Functions - Problem Solving Logic)

import 'dart:io';

void main() {

  ///=============================================================================
  /// 1- Sum of first 10 natural numbers

  */
/*
  print("Sum of first 10 natural numbers = ${calcSum()}");
  *//*


  ///=============================================================================
  /// 2- Natural numbers to n and their sum

  */
/*
  print("Enter number:");
  int num = int.parse(stdin.readLineSync()!);

  naturalNumbers(num);
  *//*


  ///=============================================================================
  /// 3- First n odd numbers and their sum

  */
/*
  print("Enter number:");
  int num = int.parse(stdin.readLineSync()!);

  print("Sum = ${calcOddNumbers(num)}");
  *//*


  ///=============================================================================
  /// 4- Count positive, negative and zero numbers

  */
/*
  print("How many numbers do you want to enter?");
  int count = int.parse(stdin.readLineSync()!);

  print("Enter $count numbers:");
  displayTypeNumbers(count);
  *//*


  ///=============================================================================
  /// 5- Factorial

  */
/*
  print("Enter number:");
  int num = int.parse(stdin.readLineSync()!);

  print("Factorial = ${getFactorial(num)}");
  *//*


  ///=============================================================================
  /// 6- Reverse digits of a number

  */
/*
  print("Enter number:");
  int num = int.parse(stdin.readLineSync()!);

  print("Reversed digits = ${getReverseNumber(num).join('')}");
  *//*


  ///=============================================================================
  /// 7- Numbers divisible by 5 and 6 (100 → 1000)

  */
/*
  print("Numbers divisible by 5 and 6:");
  print(getDivisible().join(' '));
  *//*


  ///=============================================================================
  /// 8- Prime number check

  */
/*
  print("Enter number:");
  int num = int.parse(stdin.readLineSync()!);

  print(getPrime(num) ? "Yes" : "No");
  *//*


  ///=============================================================================
  /// 9- Palindrome check

  */
/*
  print("Enter number:");
  int num = int.parse(stdin.readLineSync()!);

  print(checkPalindrome(num) ? "Palindrome" : "Not Palindrome");
  *//*


  ///=============================================================================

}

//============ Program 1 Functions ============
int calcSum() {
  int sum = 0;

  for (int i = 1; i <= 10; i++) {
    sum += i;
  }

  return sum;
}

///=============================================================================

//============ Program 2 Functions ============
void naturalNumbers(int num) {
  int sum = 0;

  print("Natural numbers:");

  for (int i = 1; i <= num; i++) {
    stdout.write("$i ");
    sum += i;
  }

  print("\nSum = $sum");
}

///=============================================================================

//============ Program 3 Functions ============
int calcOddNumbers(int num) {
  int sum = 0;
  int count = 0;

  for (int i = 1; count < num; i++) {
    if (i % 2 != 0) {
      stdout.write("$i ");
      sum += i;
      count++;
    }
  }

  print("");
  return sum;
}

///=============================================================================

//============ Program 4 Functions ============
void displayTypeNumbers(int count) {
  int pos = 0, neg = 0, zero = 0;

  for (int i = 1; i <= count; i++) {
    int num = int.parse(stdin.readLineSync()!);

    if (num > 0) {
      pos++;
    } else if (num < 0) {
      neg++;
    } else {
      zero++;
    }
  }

  print("Positive = $pos, Negative = $neg, Zero = $zero");
}

///=============================================================================

//============ Program 5 Functions ============
int getFactorial(int num) {
  int result = 1;
  for (int i = 1; i <= num; i++) {
    result *= i;
  }
  return result;
}

///=============================================================================

//============ Program 6 Functions ============
List<int> getReverseNumber(int num) {
  List<int> reverse = [];

  while (num != 0) {//0
    int digit = num % 10; //0 0 2  1
    reverse.add(digit);//0 0 2 1
    num = num ~/ 10;// 0
  }

  return reverse;
}

///=============================================================================

//============ Program 7 Functions ============
List<int> getDivisible() {
  List<int> result = [];

  for (int i = 100; i <= 1000; i++) {
    if (i % 5 == 0 && i % 6 == 0) {
      result.add(i);
    }
  }

  return result;
}

///=============================================================================

//============ Program 8 Functions ============
bool getPrime(int num) {
  int count = 0;

  for (int i = 1; i <= num; i++) {
    if (num % i == 0) {
      count++;
    }
  }

  return count == 2;
}

///=============================================================================

//============ Program 9 Functions ============
bool checkPalindrome(int num) {
  int original = num;
  int reverse = 0;

  while (num != 0) {
    int digit = num % 10;
    reverse = reverse * 10 + digit;
    num = num ~/ 10;
  }

  return original == reverse;
}

///=============================================================================*/
