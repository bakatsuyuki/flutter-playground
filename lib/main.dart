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
            _TextWidgets(),
            Text('These are overrides with 3'),
            ProviderScope(
              overrides: [
                _anyScopedValue.overrideWithValue('3'),
              ],
              child: _TextWidgets(),
            ),
            // It's thrown error because not add dependency to _anyScopedValue
            /*
            Text(
              '_valueNotDependScopedValue: ${ref.watch(_valueNotDependScopedValue)}',
            ),*/
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(_countState.notifier).state++,
        child: Icon(Icons.add),
      ),
    );
  }
}

class _TextWidgets extends ConsumerWidget {
  const _TextWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('anyScopedValue: ${ref.watch(_anyScopedValue)}'),
        Text(
          'valueWithDependencies: ${ref.watch(_valueWithDependencies)}',
        ),
        Text(
          'valueWithDependencies2: ${ref.watch(_valueWithDependencies2)}',
        ),
      ],
    );
  }
}

final _anyScopedValue = Provider((_) => '1');
final _valueWithDependencies = Provider(
  (ref) => '${ref.watch(_anyScopedValue)}${ref.watch(_countState)}',
  // It needs a dependency to _countState if using 'dependencies.'
  dependencies: [_anyScopedValue, _countState],
);
final _valueWithDependencies2 = Provider(
  (ref) => ref.watch(_valueWithDependencies),
  dependencies: [_valueWithDependencies],
);

final _countState = StateProvider(
  (ref) => 0,
);

/*
final _valueNotDependScopedValue = Provider(
  (ref) => ref.watch(_anyScopedValue),
);
*/
