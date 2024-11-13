
import 'dart:core';

import 'package:rxdart/rxdart.dart';

void main(){
 final rxmap = BehaviorSubject<int>();
 rxmap.stream
 .map((number)=> number*number)
 .listen(print);
 rxmap.add(12);
 rxmap.add(15);
 rxmap.add(16);
 rxmap.add(18);
}