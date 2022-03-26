abstract class Dog {
  const Dog({
    required this.bark,
    required this.run,
  });

  final BarkBehavior bark;
  final RunBehavior run;
}

class ToyPoodle extends Dog {
  ToyPoodle()
      : super(
          bark: TinyBarkBehavior,
          run: NormalRunBehavior,
        );
}

class Bulldog extends Dog {
  Bulldog()
      : super(
          bark: StrongBarkBehavior,
          run: NormalRunBehavior,
        );
}

typedef BarkBehavior = void Function();
final StrongBarkBehavior = () => print('バウ！');
final TinyBarkBehavior = () => print('ワン！');

typedef RunBehavior = void Function();
final NormalRunBehavior = () => print('犬が走っています');
