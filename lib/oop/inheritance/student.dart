import 'person.dart';
class Student extends Person{
  int numCourse;
  List<String> courses=[];
  Student(this.numCourse, this.courses,super.name,super.address);
  @override
  toString(){
    return'name = $name, address = $address';
  }
  final List<int> _grades=[];
  void addCourseGrade(String course, int grade){
    for(int i =0;i<courses.length;i++){
      if(courses[i].contains(course)){
        _grades.add(grade);
      }
    }
  }
void printGrade(){
    for(int i=0;i<courses.length;i++){
      print("course name :${courses[i]} grade =${_grades[i]}");
    }
}
double getAverageGrades(){
    int sum=0;
    for(int i=0;i<_grades.length;i++){
    sum += _grades[i];
    }
    return sum /_grades.length;
}

}