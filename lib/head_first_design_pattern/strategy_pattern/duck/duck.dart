import '../fly_behavior.dart';
import '../quack_behavior.dart';

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
