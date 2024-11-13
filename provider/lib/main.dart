//
//  import 'package:flutter/material.dart';
//  import 'package:flutter_state_notifier/flutter_state_notifier.dart';
//  import 'counter.dart';
//  void main() {
//    runApp(
//      StateNotifierProvider<Counter, int>(
//        create: (_) => Counter(),
//        child: MyApp(),
//      ),
//    );
//  }
//
//  class MyApp extends StatelessWidget {
//    @override
//    Widget build(BuildContext context) {
//      return MaterialApp(
//        title: 'Counter App',
//        theme: ThemeData(
//          primarySwatch: Colors.blue,
//        ),
//        home: const StateNotifierExample(),
//      );
//    }
//  }
//
// class StateNotifierExample extends StatefulWidget {
//   const StateNotifierExample({super.key});
//
//   @override
//   State<StateNotifierExample> createState() => _StateNotifierState();
// }
//
// class _StateNotifierState extends State<StateNotifierExample> {
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('StateNotifier Example')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'The total after all the increment: $_counter',
//               style: Theme.of(context).textTheme.headlineSmall,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//
//     );
//   }
// }
//


import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:sample_provider/counter.dart';


void main() {
  runApp(
    StateNotifierProvider<Counter, int>(
      create: (_) => Counter(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int count = context.watch<int>();

    return Scaffold(
      appBar: AppBar(title: const Text(
          'Counter App')
      ),
    body: Text(count.toString()),
    floatingActionButton: FloatingActionButton(
    onPressed: () => context.read<Counter>().increment(),
    child: Icon(Icons.add),
      /*body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('TOTAL:'),
            Text(
              '${counter.state}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: counter.decrement,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: counter.increment,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),*/
    )
    );
  }
}