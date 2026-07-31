import 'package:my_first_dart_project/oop/abstruction_polymorphism/shape.dart';

class RectangleP3 extends Shape{
  int height;
  int width;

  RectangleP3(this.height, this.width,super.color);

  @override
  double getArea() {
    return height * width*1;
  }
@override
  toString(){
    return 'shape type is rectangle his color is $color';
}
}