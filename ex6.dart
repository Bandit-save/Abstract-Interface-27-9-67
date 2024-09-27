
import 'dart:math';

abstract class Shape{
  void calculateArea();
}
abstract class Drawable{
  void drawable();
}
class Circle implements Shape,Drawable{
  double? radius;
  Circle(this.radius);

  @override
  void calculateArea(){
   double sum  = pi * radius! * radius!;
    print('calculateArea :${sum.toStringAsFixed(2)}');
  }
  
  @override
  void drawable() {
    print("Drawing Circle with radius: ${radius}");
  }
}
class Rectangle implements Shape,Drawable{
  double? width;
  double? height;
  Rectangle(this.height,this.width);
  
  @override
  void calculateArea() {
    double sum = width! * height!;
    print('Rectangle: $sum');
  }
  
  @override
  void drawable() {
    print("Drawing Rectangle with width: $height and height: $width ");
  }
  
}

void main(List<String> args) {
  var circle =Circle(5);
  var rec = Rectangle(10,20);
  circle.calculateArea();
  circle.drawable();
  rec.calculateArea();
  rec.drawable();

}