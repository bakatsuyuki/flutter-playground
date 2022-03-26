abstract class _Duck {
  void quack() => print('displayDuck');
  void swim() => print('swim');
  void display() => print('displayDuck');
  // あとから追加された機能
  void fly() => print('flyWithWings');
}

class MallardDuck extends _Duck {
  @override
  void display() => print('displayMallardDuck');
}

class RubberDuck extends _Duck {
  @override
  void quack() => print('squack');
  @override
  void display() => print('display');

  ///
  /// MEMO: RubberDuckはflyできないので本来であれば下の実装が必要だった
  /// MEMO: あとから追加されたflyメソッドをoverrideする必要があったことに気づかず、RubberDuckが飛べるようになってしまった
  /// @override
  /// void fly() {
  ///     print('flyWithWings');
  /// }
  ///
}
