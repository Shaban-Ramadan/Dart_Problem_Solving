import 'dart:math';
import 'geometric.dart';

class Triangle extends GeometricObject {
  double side1 = 1.0;
  double side2 = 1.0;
  double side3 = 1.0;
  Triangle.triangle(super.color,super.filled);
  Triangle(this.side1, this.side2, this.side3,super.color,super.filled);

  double getArea() {
    if (side1 + side2 <= side3 ||
        side1 + 3 <= side2 ||
        side2 + side3 <= side1) {
      throw ArgumentError('الأضلاع دي لا تكوّن مثلث صحيح');
    }
    double s = (side1 + side2 + side3) / 2; // نصف المحيط
    double area = sqrt(s * (s - side1) * (s - side2) * (s - side3));
    return area;
  }

  double getPerimeter() {
    return (side1 + side2 + side3);
  }

  @override
  toString() {
    return 'triangle: side1=$side1, side2=$side2, side3=$side3';
  }
}
