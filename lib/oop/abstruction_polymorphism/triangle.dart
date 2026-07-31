import 'shape.dart';
class TriangleP3 extends Shape{
  int base;
  int height;

  TriangleP3(this.base, this.height,super.color);

  @override
  double getArea() {
   return (base * height) /2;
  }
@override
  toString(){
    return 'shape type is Triangle his color is $color';
}

}
