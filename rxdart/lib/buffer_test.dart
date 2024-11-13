import 'package:rxdart/rxdart.dart';

void main(){
  final Test =Stream.fromIterable([1,2,3,4,5]);
  Test.bufferTest((value)=>value.isEven).listen(print);
}