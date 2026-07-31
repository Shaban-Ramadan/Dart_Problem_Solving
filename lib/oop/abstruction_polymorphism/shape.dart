abstract class Shape{
  String color;
  Shape(this.color);
  double getArea();
  @override
  String toString();
}

void shapeInfo(Shape shape){
  print(" ${  shape.toString()}");
  print("the area = ${shape.getArea()}");
}
