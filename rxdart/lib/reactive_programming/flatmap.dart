import 'package:rxdart/rxdart.dart';

void main(){
  final rxflatmap = BehaviorSubject<int>();
  rxflatmap.stream
  .flatMap((number)=> Observable.just.map((n)=>n-1))
  .listen(print);
   rxflatmap.add(34);
   rxflatmap.add(35);
   rxflatmap.add(36);
   rxflatmap.add(37);

}