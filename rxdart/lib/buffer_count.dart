import 'package:exampleRx/behaviour_subject.dart';
import 'package:rxdart/rxdart.dart';

void main(){
  final source = Stream.fromIterable([1,2,3,4,5]);
  source.bufferCount(2).listen(print);
}