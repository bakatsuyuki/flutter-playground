import 'package:playground/head_first_design_pattern/anti_patterns/strategy_pattern/quack_behavior.dart';

import '../fly_behavior.dart';

abstract class Duck {
  const Duck({
    required this.flyBehavior,
    required this.quackBehavior,
  });

  final FlyBehavior flyBehavior;
  final QuackBehavior quackBehavior;

  void swim() => print('swim');
  void display();
  void quack() => quackBehavior.call();
  void fly() => flyBehavior.call();
}

class MallardDuck extends Duck {
  MallardDuck()
      : super(
          flyBehavior: flyWithWings,
          quackBehavior: quackNormal,
        );

  @override
  void display() {
    print('showMallardDuck');
  }
}
