import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProviderScope(overrides: [
        _anyScopedValue.overrideWithValue('2'),
      ], child: const MyHomePage()),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('anyScopedValue: ${ref.watch(_anyScopedValue)}'),
            Text(
              'valueWithDependencies: ${ref.watch(_valueWithDependencies)}',
            ),
            Text(
              'valueWithDependencies2: ${ref.watch(_valueWithDependencies2)}',
            ),
            // It's thrown error because not add dependency to _anyScopedValue
            /*
            Text(
              '_valueNotDependScopedValue: ${ref.watch(_valueNotDependScopedValue)}',
            ),*/
          ],
        ),
      ),
    );
  }
}

final _anyScopedValue = Provider((_) => '1');
final _valueWithDependencies = Provider(
  (ref) => ref.watch(_anyScopedValue),
  dependencies: [_anyScopedValue],
);
final _valueWithDependencies2 = Provider(
  (ref) => ref.watch(_valueWithDependencies),
  dependencies: [_valueWithDependencies],
);

final _valueNotDependScopedValue = Provider(
  (ref) => ref.watch(_anyScopedValue),
);
