import 'geometric.dart';

class Rectangle extends GeometricObject {
  double height = 1.0;
  double width = 1.0;

  Rectangle.rectangle(
      super.color, super.filled
      );
  Rectangle( this.height,
      this.width,
      super.color,
      super.filled,);

  double getArea(){
    return height*width;
  }
  double getPerimeter(){
    return 2 *(height+width);
  }
  @override
  toString(){
    return 'Rectangle: height=$height,width=$width';
  }
}