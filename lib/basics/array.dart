//(===============================Assignment4=========================)
import 'dart:io';

void main() {
  //1- Write a program that reads an unspecified number of scores and determines
  // how many scores are above or equal to the average and how many scores are
  // below the average. Enter a negative number to signify the end of the input.
  // Assume that the maximum number of scores is 100.

  /* print("Enter all your scores and enter negative number to stop:");
  int maxScores=100;
  getAverage( readArray(maxScores));*/
//====== testing example ============
//Enter all your scores and enter negative number to stop:
// 1
// 3
// 5
// 8
// -1
// the Average :4.25
//
// Above Average :2
//
// Below Average :2
//
// Equal Average :0
//
//  all your scores :1 3 5 8

  ///=============================================================================
//2- Write  a program to calculate the average value of array elements
/*print("Enter the length of the list:");
int length=int.parse(stdin.readLineSync()!);
print("the average =${getAverag(readArr(length))}");*/
//==========testing example ================
//Enter the length of the list:
// 6
// enter value 1:
// 1
// enter value 2:
// 9
// enter value 3:
// 0
// enter value 4:
// 5
// enter value 5:
// 4
// enter value 6:
// 2
// the average =3.5
  ///=============================================================================
//-3 Write a program to find the second smallest element in an array
/*print("Enter the length of the list:");
int length=int.parse(stdin.readLineSync()!);
print("the second minMUm value =${getSecondMin(readArr(length))}");*/
//====testing example==============
//Enter the length of the list:
// 6
// enter value 1:
// 1
// enter value 2:
// 9
// enter value 3:
// 0
// enter value 4:
// 5
// enter value 5:
// 4
// enter value 6:
// 2
// the second minMUm value =1
  ///=============================================================================
// 4- Write a program that reads student scores, gets the best score, and then
// assigns grades based on the following scheme:
 /* print("Enter the number of students:");
  int length = int.parse(stdin.readLineSync()!);
  print("Enter $length scores:");
  getStudentGrade(readArr(length));*/
//====testing example=============
//Enter the number of students:
// 5
// Enter 5 scores:
// enter value 1:
// 55
// enter value 2:
// 60
// enter value 3:
// 40
// enter value 4:
// 80
// enter value 5:
// 85
// Student1 score is 55 and grade C
//
// Student2 score is 60 and grade C
//
// Student3 score is 40 and grade F
//
// Student4 score is 80 and grade A
//
// Student5 score is 85 and grade A
///=============================================================================
// 5- Write a program that reads ten integers and displays them in the reverse of
// the order in which they were read.
/*print("Enter the length of the list:");
int length=int.parse(stdin.readLineSync()!);
print("the Reverse Numbers =${getReverse(readArr(length)).join(' ')}");*/
///=============================================================================
//  6-Write a program that reads the integers between 1and 100 and counts the
//  occurrences of each Assume the input ends with 0.
/*print("Enter count of how many need to Enter numbers: ");
int length=int.parse(stdin.readLineSync()!);
getRepeatedNum(readArr(length));*/
//=====testing example=================
//Enter count of how many need to Enter numbers:
// 10
// enter value 1:
// 2
// enter value 2:
// 5
// enter value 3:
// 6
// enter value 4:
// 5
// enter value 5:
// 4
// enter value 6:
// 3
// enter value 7:
// 23
// enter value 8:
// 43
// enter value 9:
// 2
// enter value 10:
// 0
// 2 occurs 2
//
// 5 occurs 2
//
// 6 occurs 1
//
// 4 occurs 1
//
// 3 occurs 1
//
// 23 occurs 1
//
// 43 occurs 1
//
// 0 occurs 1
///=============================================================================

}

//============ program 1 functions ============
List<int> readArray(int length) {
  List<int> array = [];
  for (int i = 0; i < length; i++) {
    int value = int.parse(stdin.readLineSync()!);
    array.add(value);
    if (array[i] >= 0) {
      continue;
    } else {
      array.removeAt(i);
      break;
    }
  }
  return array;
}

void getAverage(List<int> arr) {
  int arrLength = arr.length, sum = 0, contAbove = 0;
  int countBelow = 0, countEqual = 0;
  for (int i = 0; i < arr.length; i++) {
    sum += arr[i];
  }
  double average = sum / arrLength;
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] > average) {
      contAbove++;
    } else if (arr[i] < average) {
      countBelow++;
    } else {
      countEqual++;
    }
  }
  print("the Average :$average \n");
  print("Above Average :$contAbove \n");
  print("Below Average :$countBelow \n");
  print("Equal Average :$countEqual");
}

//=============program2 function===============
List<int> readArr(int length) {
  List<int> array = [];
  for (int i = 0; i < length; i++) {
    print("enter value ${i + 1}:");
    int value = int.parse(stdin.readLineSync()!);
    array.add(value);
  }
  return array;
}

double getAverag(List<int> array) {
  int length = array.length;
  int sum = 0;
  for (int i = 0; i < length; i++) {
    sum += array[i];
  }
  return sum / length;
}

//============= program3 functions =============
int getSecondMin(List<int> arr) {
  int length = arr.length;
  int swap = 0;
  for (int i = 0; i < length; i++) {
    for (int j = 0; j < length; j++) {
      if (arr[i] > arr[j]) {
        swap = arr[i];
        arr[i] = arr[j];
        arr[j] = swap;
      }
    }
  }
  return arr[length - 2];
}

//============ program4 functions===============
void getStudentGrade(List<int> scores) {
  int max = 0;
  List<String> grades = [];
  // get max value
  for (int i = 0; i < scores.length; i++) {
    if (scores[i] >= max) {
      max = scores[i]; //70
    }
  }
  // get grade by score
  for (int i = 0; i < scores.length; i++) {
    if (scores[i] >= max - 10) {
      grades.add('A');
    } else if (scores[i] >= max - 20) {
      grades.add('B');
    } else if (scores[i] >= max - 30) {
      grades.add('C');
    } else if (scores[i] >= max - 40) {
      grades.add('D');
    } else {
      grades.add('F');
    }
  }
  //print student  score and grade!
  for (int i = 0; i < scores.length; i++) {
    print("Student${i + 1} score is ${scores[i]} and grade ${grades[i]}\n");
  }
}
//============program5 functions===============
List<int> getReverse(List<int> arr){
  int length=arr.length;
  int swap=0;
  print("the original sort numbers :${arr.join(' ')}\n");
  for(int i=0;i<length~/2;i++){
      swap= arr[length-(i+1)];
       arr[length-(i+1)]=arr[i];
      arr[i]=swap;
  }
  return arr;
}
//=============program6 functions==============
void getRepeatedNum(List<int> arr){
  int cont=0;
  List<int> repeated=[];
  for(int i=0;i<arr.length;i++){
    if(repeated.contains(arr[i]))continue;
    cont =0;
    for(int j=0;j<arr.length;j++){
      if(arr[i]==arr[j]){
       cont++;
      }
    }
    print("${arr[i]} occurs $cont\n");
    repeated.add(arr[i]);
//2  5  6  5  4  3  23  43  2  0
  }
}

