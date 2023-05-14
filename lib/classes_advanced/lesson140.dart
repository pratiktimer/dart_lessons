class Point {
  Point(this.x, this.y);

  final int x;
  final int y;

  @override
  String toString() => 'x $x and y $y';

  @override
  bool operator ==(covariant Point other) {
    return x == other.x && y == other.y;
  }

  @override
  Point operator +(covariant Point other) {
    return Point(x + other.x, y + other.y);
  }

  @override
  Point operator *(covariant Point other) {
    return Point(x * other.x, y * other.y);
  }
}

void main() {
  print(Point(0, 0) == Point(0, 0));
  print(Point(2, 4) + Point(3, 5));
}
