import 'dart:math';

abstract class Shape {
  double get area;
  void printArea(double shape);
  double get perimeter;
  void printAreaAndPerimeter(Shape shape);
}

class Square implements Shape {
  Square(this.side);

  final double side;

  @override
  double get area => side * side;

  @override
  void printArea(double value) => print('$value');

  @override
  double get perimeter => 4 * side;

  @override
  void printAreaAndPerimeter(Shape shape) {
    printArea(shape.area);
    print(shape.perimeter);
  }
}

class Circle implements Shape {
  Circle(this.r);

  final double r;

  @override
  double get area => pi * r * r;

  @override
  void printArea(double value) => print('${value}');

  @override
  double get perimeter => 2 * pi * r;

  @override
  void printAreaAndPerimeter(Shape shape) {
    printArea(shape.area);
    print(shape.perimeter);
  }
}

void main() {
  final Shape square = Square(4);
  square.printArea(square.perimeter);

  final Shape circle = Circle(4);
  circle.printArea(circle.perimeter);
}
