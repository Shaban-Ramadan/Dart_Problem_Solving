/*
//(===============================Assignment3=========================)
// (More Functions - Problem Solving Logic)

import 'dart:io';

void main() {

  ///=============================================================================
  /// 1- Get Minimum Value

  */
/*
  print("Enter the count of list numbers:");
  int n = int.parse(stdin.readLineSync()!);

  List<int> numbers = [];

  for (int i = 1; i <= n; i++) {
    print("enter value of num $i:");
    int value = int.parse(stdin.readLineSync()!);
    numbers.add(value);
  }

  print("Minimum value = ${getMinimum(numbers)}");
  *//*


  ///=============================================================================
  /// 2- Get Even Numbers

  */
/*
  print("Enter count of list numbers:");
  int n = int.parse(stdin.readLineSync()!);

  List<int> numbers = [];

  for (int i = 1; i <= n; i++) {
    print("enter value $i:");
    int value = int.parse(stdin.readLineSync()!);
    numbers.add(value);
  }

  print("Even numbers = ${getEvenNumbers(numbers).join(' ')}");
  *//*


  ///=============================================================================
  /// 3- Count occurrences of number 2

  */
/*
  print("Enter count of list numbers:");
  int n = int.parse(stdin.readLineSync()!);

  List<int> numbers = [];

  for (int i = 1; i <= n; i++) {
    print("enter value $i:");
    int value = int.parse(stdin.readLineSync()!);
    numbers.add(value);
  }

  print("Count of number 2 = ${countTwo(numbers)}");
  *//*


  ///=============================================================================
  /// 4- Count occurrences of all numbers

  */
/*
  print("Enter count of list numbers:");
  int n = int.parse(stdin.readLineSync()!);

  List<int> numbers = [];

  for (int i = 1; i <= n; i++) {
    print("enter value $i:");
    int value = int.parse(stdin.readLineSync()!);
    numbers.add(value);
  }

  List<int> counts = countGeneral(numbers);

  for (int i = 0; i < numbers.length; i++) {
    print("${numbers[i]} occurs ${counts[i]}");
  }
  *//*


  ///=============================================================================
  /// 5- Bubble Sort

  */
/*
  print("Enter count of list numbers:");
  int n = int.parse(stdin.readLineSync()!);

  List<int> numbers = [];

  for (int i = 1; i <= n; i++) {
    print("enter value $i:");
    int value = int.parse(stdin.readLineSync()!);
    numbers.add(value);
  }

  print("Sorted list = ${bubbleSort(numbers)}");
  *//*


  ///=============================================================================

}

//============ Program 1 Functions ============
int getMinimum(List<int> numbers) {
  int min = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] < min) {
      min = numbers[i];
    }
  }

  return min;
}

///=============================================================================

//============ Program 2 Functions ============
List<int> getEvenNumbers(List<int> numbers) {
  List<int> even = [];

  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 == 0) {
      even.add(numbers[i]);
    }
  }

  return even;
}

///=============================================================================

//============ Program 3 Functions ============
int countTwo(List<int> numbers) {
  int count = 0;

  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] == 2) {
      count++;
    }
  }

  return count;
}

///=============================================================================

//============ Program 4 Functions ============
List<int> countGeneral(List<int> numbers) {
  List<int> counts = List.filled(numbers.length, 0);

  for (int i = 0; i < numbers.length; i++) {
    for (int j = 0; j < numbers.length; j++) {
      if (numbers[i] == numbers[j]) {
        counts[i]++;
      }
    }
  }

  return counts;
}

///=============================================================================

//============ Program 5 Functions ============
List<int> bubbleSort(List<int> numbers) {
  for (int i = 0; i < numbers.length; i++) {
    for (int j = 0; j < numbers.length - 1; j++) {
      if (numbers[j] > numbers[j + 1]) {
        int temp = numbers[j];
        numbers[j] = numbers[j + 1];
        numbers[j + 1] = temp;
      }
    }
  }

  return numbers;
}

///=============================================================================*/
