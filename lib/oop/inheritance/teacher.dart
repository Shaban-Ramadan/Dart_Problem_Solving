import 'person.dart';
class Teacher extends Person{
  int numCourses;
  List<String> courses=[];
  Teacher(this.numCourses, this.courses,super.name,super.address) ;
  @override
  toString(){
    return 'name = $name, address =$address';
  }
  bool addCourse(String course){
    if(course.isNotEmpty){
        if(courses.contains(course)){
          print("this course already exits!");
          return false;
        }else{
          courses.add(course);
          return true;
        }
      }
    return false;
  }

  bool removeCourse(String course){
    for(int i=0;i<courses.length;i++){
      if(courses[i].contains(course)){
        courses.removeAt(i);
        return true;
      }
    }
    print("this course ont register before");
    return false;
  }
  
}