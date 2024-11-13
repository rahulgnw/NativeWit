import 'package:exampleRx/behaviour_subject.dart';
import 'package:rxdart/rxdart.dart';

void main(){
  final file = Stream.empty();
  file.defaultIfEmpty(42).listen(print);
}