void main(){
  List<int> number =[12,9,4,3,15,0];
  print("the original list:$number");
  print("the sorted list  :${selectionSort(number)}");
  print("result =  ${binarySearch(selectionSort(number), 4)}");
}

List<int> selectionSort(List<int> arr){
  //[0,3,4,9,12,15];
  for(int i=0;i<arr.length-1;i++) {
    int minIndex=getMinIndex(arr,i);
    int temp = arr[minIndex];
    arr[minIndex]=arr[i];
    arr[i]=temp;
  }
  return arr;
}
int getMinIndex(List<int>arr,int startPoint){
  int min=startPoint;
  for(int i=startPoint;i<arr.length;i++){
    if(arr[i]< arr[min]){
      min=i;
    }
  }
  return min;
}

int binarySearch(List<int> array,int value){
      int start=0;
      int end = array.length-1;
      while(start<=end){
         int mid =(start+end)~/2;
         if(value ==array[mid]){
           return value;
         }else if(value<array[mid]){
           end=mid-1;
         }else if(value > array[mid]){
           start =mid+1;
         }
      }
      return -1;

}
