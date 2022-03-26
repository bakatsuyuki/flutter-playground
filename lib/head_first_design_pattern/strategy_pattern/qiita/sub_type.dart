abstract class Dog {
  void bark();
  void run() => print('犬が走っています');
}

class ToyPoodle extends Dog {
  @override
  void bark() => print('ワン！');
}

class Bulldog extends Dog {
  @override
  void bark() => print('バウ！');
}

class Doberman extends Dog {
  @override
  void bark() => print('バウ！');
}
