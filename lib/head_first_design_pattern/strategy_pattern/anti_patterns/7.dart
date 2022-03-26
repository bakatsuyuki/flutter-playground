abstract class _Duck {
  void swim() => print('swim');
  void display() => print('displayDuck');
}

mixin _Flyable {
  void fly() => print('flyWithWings');
}

mixin _Quackable {
  void quack() => print('displayDuck');
}

class MallardDuck extends _Duck with _Flyable {
  @override
  void display() => print('displayMallardDuck');
}

class RubberDuck extends _Duck with _Quackable {
  @override
  void quack() => print('squack');
  @override
  void display() => print('display');
}
