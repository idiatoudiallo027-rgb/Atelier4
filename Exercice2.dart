class Point {
  double _x;
  double _y;

  Point(this._x, this._y);

  void move(double dx, double dy) {
    _x += dx;
    _y += dy;
  }

  void display() {
    print('($_x, $_y)');
  }
}

void main() {
  var pts = Point(2, 5);
  pts.display();

  pts.move(-1, 3);
  pts.display();
}
