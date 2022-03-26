import 'package:playground/head_first_design_pattern/anti_patterns/strategy_pattern/fly_behavior.dart';
import 'package:playground/head_first_design_pattern/anti_patterns/strategy_pattern/quack_behavior.dart';

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
