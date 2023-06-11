void main(List<String> arguments) {
  const int x = 3;
  const bool y = false;
  print('$x, $y');

  String? a;
  int? b;
  a = '';
  b = null;

  if (a.isNotEmpty) {
    print('a: $a');
  }

  int? c = b?.floor();

  if (c == null) {
    print('c: $c');
  }

  int addIntegers(int a, int b) {
    return a + b;
  }

  int addIntegers2({required int a, required int b}) {
    return a + b;
  }

  var p = addIntegers(2, 3);
  var q = addIntegers2(a: 3, b: 3);

  String mystring() => 'hello world';
  var r = mystring();
  // ignore: prefer_function_declarations_over_variables
  var s = () => 'hello workd';
  print('p:$p, q:$q, r:$r, s:$s, my:$addIntegers');

  // Classes
  var rect = Rectangle(20, 30);
  var cir = Circle(height: 20, width: 40);
  print('rect:$rect, cir:$cir');
}

class Rectangle {
  final int width;
  final int height;

  Rectangle(this.width, this.height);
}

class Circle {
  Circle({required int width, required int height});
}
