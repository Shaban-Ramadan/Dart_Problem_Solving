import 'dart:io';

void main(){
  //1- create function that take array as parameters
  // return the sum of the it's element
  print("enter count of the list digits:");
  int n=int.parse(stdin.readLineSync()!);
     /* print("the sum of elements = ${getSumE(readList(n))}");*/
///=============================================================================
  //2- create function that take array as parameters
  //return the max value
  /* print("the max of element = ${getMaxE(readList(n))}");*/
///=============================================================================
  // create function that take two parameters as
  //-1 arr
  //2- value
  // function name search
  List<int> numbers= readList(n);
  print("enter the value you need ot search about it:");
  int v=int.parse(stdin.readLineSync()!);
  int index= searchV(numbers, v);
 if(index ==-1){
   print(" not fount!");
 }else{
   print("found at index=$index");
 }

}
 List<int> readList(int lisLength){
  List<int>numbers=[];
   while(lisLength!=0){
     int numValue=int.parse(stdin.readLineSync()!);
     numbers.add(numValue);
     lisLength--;
   }
   return numbers;
 }
int getSumE(List<int> arr){
    int sumE=0;
   for(int i=0;i<=arr.length-1;i++) {
     sumE += arr[i];
   }
   return sumE;
 }
 int getMaxE(List<int> arr){
  int max=0;
  int min=max;


  for(int i=0;i<arr.length;i++){

    if(arr[i]>=max){
      max=arr[i];
    }else if(arr[i]<=min){
      min =arr[i];
    }

  }
  return max;
 }
 int searchV(List<int> arr, int value){
 
  for(int i=0;i<arr.length;i++){
    if(arr[i]==value){
     return i;
    }
  }
  return -1;
 }