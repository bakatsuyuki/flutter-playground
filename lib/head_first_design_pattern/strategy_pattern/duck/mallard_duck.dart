import '../fly_behavior.dart';
import '../quack_behavior.dart';
import 'duck.dart';

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
