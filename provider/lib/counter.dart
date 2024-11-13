
 import 'package:flutter_state_notifier/flutter_state_notifier.dart';

 class Counter extends StateNotifier<int> {
   Counter() : super(0);

   void increment() => state++;
   void decrement() => state--;
 }
