abstract class Duck {
  void quack();
  void swim();
  void display();
  // あとから追加された機能
  void fly();
}

class MallardDuck extends Duck {
  void quack() => print('quack');
  void swim() => print('swim');
  void display() => print('display');
  void fly() => print('fly');
}

class RubberDuck extends Duck {
  void quack() => print('quack');
  void swim() => print('swim');
  void display() => print('display');
  void fly() {
    // FIXME: RubberDuckはflyする必要がない
    // FIXME: SubClassでは、機能追加のときに不要な継承が発生する可能性があり、保守性が低くなる。
  }
}
