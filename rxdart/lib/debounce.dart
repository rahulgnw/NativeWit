import 'package:exampleRx/behaviour_subject.dart';
import 'package:exampleRx/concat.dart';
import 'package:rxdart/rxdart.dart';

void main(){
  final exampleDebounce=Stream.periodic(Duration(milliseconds: 400),(x)=>x).take(5);
  exampleDebounce.debounce((_)=>Stream.value(null).delay(Duration(milliseconds: 400))).listen(print);
}