
import 'package:exampleRx/behaviour_subject.dart';
import 'package:rxdart/rxdart.dart';

void main(){
  final a1 = Stream.fromIterable([1,2,3]);
  final a2 = Stream.fromIterable([4,5,6]);
  a1.concatWith([a2]).listen(print);
}