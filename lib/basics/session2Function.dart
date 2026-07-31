import 'dart:io';

void main() {
  ///========================== function ======================
  /// 1 -getMaxValue
  /*print("three values :");
int num1 =int.parse(stdin.readLineSync()!);
int num2 =int.parse(stdin.readLineSync()!);
int num3 =int.parse(stdin.readLineSync()!);
 print("the max value = ${getMaxValue(num1, num2, num3)}");*/

  ///2-factorial
/*print("enter any integer number: ");
int num= int.parse(stdin.readLineSync()!);
print("the factorial of number = ${getFactorial(num)}");*/

  ///3-checkPrime
/*
  print("enter any any integer number:");
  int num = int.parse(stdin.readLineSync()!);
 print(checkPrime(num));*/

  ///========================== function and while loop ========
  ///4- sumDigitNum
  /*print("enter a number contain many digits:");
  int num = int.parse(stdin.readLineSync()!);
print("sum digits =${ sumDigitNum(num)}");*/

  /// 5-infiniteSum
/* infiniteSum();*/

  ///========================== nested loop ========
  /// 6- drawSquare
/* print( "enter height of the square:");
 int height = int.parse(stdin.readLineSync()!);
  drawSquare(height);*/

  /// 7- drawTraingle
  print("enter height of the Traingle:");
  int height = int.parse(stdin.readLineSync()!);
  drewTraingle(height);
}

/// 1 -getMaxValue
int getMaxValue(int n1, int n2, int n3) {
  return n1 > n2 && n1 > n3
      ? n1
      : n2 > n1 && n2 > n3
          ? n2
          : n3;
}

///2-factorial
int getFactorial(int num) {
  if (num == 0 || num == 1) {
    return 1;
  } else {
    return num * getFactorial(num - 1);
  }
}

///3-checkPrime
bool checkPrime(int num) {
  int count = 0;
  for (int i = 1; i <= num; i++) {
    if (num % i == 0) {
      count++;
    } else {}
  }

  return count == 2;
}

///4- sumDigitNum
int sumDigitNum(int number) {
  int sum = 0;
  while (number != 0) {
    int digit = number % 10;
    sum += digit;
    number = number ~/ 10;
  }
  return sum;
}

///5- infiniteSum
void infiniteSum() {
  int sum = 0;
  while (true) {
    print("tray enter many numbers and enter 0 to stop:");
    int num = int.parse(stdin.readLineSync()!);
    sum += num;
    if (num == 0) {
      break;
    }
  }
  print("because you entered 0 the sum previous number =$sum");
}

///6-drewSquare
void drawSquare(int heightSquare) {
  for (int i = 1; i <= heightSquare; i++) {
    for (int j = 1; j <= heightSquare; j++) {
      stdout.write(' * ');
    }
    print('');
  }
}

///7-drewTraingle
void drewTraingle(int heightTraingle) {
  for (int i = 1; i <= heightTraingle; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write(' * ');
    }
    print('');
  }
}
