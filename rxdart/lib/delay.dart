import 'package:exampleRx/behaviour_subject.dart';
import 'package:rxdart/rxdart.dart';

void main(){
  final list =Stream.fromIterable([1,2,3,4,5]);
  list.delay(Duration(seconds: 2)).listen(print);
}