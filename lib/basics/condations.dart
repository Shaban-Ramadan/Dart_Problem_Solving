/*
//(===============================Assignment1=========================)
// (Input / Conditions / Operators / Math / Logic)

import 'dart:io';

void main() {

  ///=============================================================================
  /// 1- Even or Odd
  /// Write a Program that takes a number from user then prints “yes” if even
  /// and “no” if odd

  */
/*
  print("please enter integer number:");
  int num = int.parse(stdin.readLineSync()!);

  if (num % 2 == 0) {
    print("yes");
  } else {
    print("No");
  }
  *//*


  ///=============================================================================
  /// 2- Sorting Three Floating Numbers

  */
/*
  print("enter num 1:");
  double num1 = double.parse(stdin.readLineSync()!);

  print("enter num 2:");
  double num2 = double.parse(stdin.readLineSync()!);

  print("enter num 3:");
  double num3 = double.parse(stdin.readLineSync()!);

  double min, mid, max;

  if (num1 < num2 && num1 < num3) {
    min = num1;
  } else if (num2 < num1 && num2 < num3) {
    min = num2;
  } else {
    min = num3;
  }

  if (num1 > num2 && num1 > num3) {
    max = num1;
  } else if (num2 > num1 && num2 > num3) {
    max = num2;
  } else {
    max = num3;
  }

  mid = num1 + num2 + num3 - min - max;

  print("$min\n$mid\n$max");
  *//*


  ///=============================================================================
  /// 3- Voting Eligibility

  */
/*
  print("enter your age:");
  int age = int.parse(stdin.readLineSync()!);

  if (age >= 21) {
    print("Congratulation! You are eligible for voting");
  } else {
    print("You are not eligible for voting (age < 21)");
  }
  *//*


  ///=============================================================================
  /// 4- Vowel or Consonant

  */
/*
  print("enter one alphabet:");
  String char = stdin.readLineSync()!;

  if (char == 'A' || char == 'E' || char == 'I' || char == 'O' || char == 'U' ||
      char == 'a' || char == 'e' || char == 'i' || char == 'o' || char == 'u') {
    print("Vowel");
  } else {
    print("Consonant");
  }
  *//*


  ///=============================================================================
  /// 5- Min and Max using Ternary Operator

  */
/*
  print("enter three numbers:");
  double num1 = double.parse(stdin.readLineSync()!);
  double num2 = double.parse(stdin.readLineSync()!);
  double num3 = double.parse(stdin.readLineSync()!);

  double max = num1 > num2 && num1 > num3
      ? num1
      : num2 > num1 && num2 > num3
          ? num2
          : num3;

  double min = num1 < num2 && num1 < num3
      ? num1
      : num2 < num1 && num2 < num3
          ? num2
          : num3;

  print("Max = ${max.ceil()}\nMin = ${min.ceil()}");
  *//*


  ///=============================================================================
  /// 6- Pre/Post Increment

  */
/*
  int x = 3;
  int y = 2;
  int z = x++;   // z = 3, then x becomes 4
  int w = ++y;   // y becomes 3, then w = 3

  // Final values:
  // x = 4, y = 3, z = 3, w = 3
  *//*


  ///=============================================================================
  /// 7- Years to 100

  */
/*
  print("enter your name:");
  String name = stdin.readLineSync()!;

  print("enter your age:");
  int age = int.parse(stdin.readLineSync()!);

  int diff = 100 - age;

  print("Hi $name, you have $diff years to reach 100!");
  *//*


  ///=============================================================================
  /// 8- Grade Message

  */
/*
  print("enter your grade:");
  String grade = stdin.readLineSync()!;

  switch (grade) {
    case "A":
      print("Excellent");
      break;
    case "B":
      print("Outstanding");
      break;
    case "C":
      print("Good");
      break;
    case "D":
      print("Can Do Better");
      break;
    case "F":
      print("Failed");
      break;
    default:
      print("Invalid grade");
  }
  *//*


  ///=============================================================================
  /// 9- Cylinder Area & Volume

  */
/*
  print("enter radius:");
  double radius = double.parse(stdin.readLineSync()!);

  print("enter length:");
  double length = double.parse(stdin.readLineSync()!);

  const double pi = 3.14;

  double area = radius * radius * pi;
  double volume = area * length;

  print("Area = $area\nVolume = $volume");
  *//*


  ///=============================================================================
  /// 10- Number Sign

  */
/*
  print("enter number:");
  int num = int.parse(stdin.readLineSync()!);

  if (num < 0) {
    print("Negative");
  } else if (num == 0) {
    print("Zero");
  } else {
    print("Positive");
  }
  *//*


  ///=============================================================================

}*/
