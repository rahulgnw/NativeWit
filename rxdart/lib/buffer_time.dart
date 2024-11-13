import 'package:exampleRx/behaviour_subject.dart';
import 'package:rxdart/rxdart.dart';

void main(){
  final bufferTime = Stream.periodic(const Duration(milliseconds: 300),(x)=>x).take(5);
  bufferTime.bufferTime(const Duration(milliseconds: 400)).listen(print);
}