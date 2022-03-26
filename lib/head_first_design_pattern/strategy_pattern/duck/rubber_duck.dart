import '../fly_behavior.dart';
import '../quack_behavior.dart';
import 'duck.dart';

class RubberDuck extends Duck {
  RubberDuck()
      : super(
          flyBehavior: cantFly,
          quackBehavior: squack,
        );

  @override
  void display() {
    print('showRubberDuck');
  }
}
