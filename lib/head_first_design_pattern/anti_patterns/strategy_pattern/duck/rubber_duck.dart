import 'package:playground/head_first_design_pattern/anti_patterns/strategy_pattern/quack_behavior.dart';

import '../fly_behavior.dart';
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
