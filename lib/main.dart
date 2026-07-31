import 'package:my_first_dart_project/oop/abstruction_polymorphism/rectangle.dart';
import 'package:my_first_dart_project/oop/abstruction_polymorphism/shape.dart';
import 'package:my_first_dart_project/oop/abstruction_polymorphism/triangle.dart';
import 'package:my_first_dart_project/oop/inheritance/rectangle.dart';
import 'package:my_first_dart_project/oop/inheritance/student.dart';
import 'package:my_first_dart_project/oop/inheritance/teacher.dart';
import 'package:my_first_dart_project/oop/inheritance/triangle.dart';

void main() {
  //====== problem1 =============================
  Triangle t1 = Triangle(2, 2, 2, "orange", true);
  print('triangle area: ${t1.getArea()}');
  print('triangle perimeter : ${t1.getPerimeter()}');
  print('triangle description : ${t1.toString()}');
  print('====================================================');
  Rectangle rec1 = Rectangle(5,7,"blue",true);
  print('Rectangle area: ${rec1.getArea()}');
  print('Rectangle perimeter : ${rec1.getPerimeter()}');
  print('Rectangle description : ${rec1.toString()}');
  //========== problem1 output ==============================
//triangle area: 1.7320508075688772
// triangle perimeter : 3.0
// triangle description : side1=2.0, side2=2.0, side3=2.0
// ====================================================
// Rectangle area: 35.0
// Rectangle perimeter : 24.0
// Rectangle description : Rectangle: height=5.0,width=7.0
  print('===================== problem2===============================');
  //===== problem2 ============================
Teacher teach1=Teacher(4, ['Arabic','English','France','China'], 'mohamed', 'ciro');
print("add course : ${teach1.addCourse('Italian')}");
print("remove course : ${teach1.removeCourse('China')}");
print(" teacher info  : ${teach1.toString()}");
print('====================================================');
Student s1=Student(2, ['Arabic','English'], 'khaled', 'manya');
s1.addCourseGrade('Arabic',73);
s1.addCourseGrade('English',39);
s1.printGrade();
print("Average grades= ${s1.getAverageGrades()}");
print("the student ifo: ${s1.toString()}");
// ===================== problem2 output ===============================
// add course : true
// remove course : true
//  teacher info  : name = mohamed, address =ciro
// ====================================================
// course name :Arabic grade =73
// course name :English grade =39
// Average grades= 56.0
// the student ifo: name = khaled, address = manya
  //===== problem3 ============================
  print('===================== problem3===============================');
  Shape triangle1=TriangleP3(4, 4, 'red');
  Shape rectangle1=RectangleP3(4,6,'blue');
  shapeInfo(triangle1);
  shapeInfo(rectangle1);
//  ===================== problem3 output===============================
//   shape type is Triangle his color is red
//   the area = 8.0
//   shape type is rectangle his color is blue
//   the area = 24.0
}


