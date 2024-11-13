import 'package:rxdart/rxdart.dart';

void main(){
  final subject = PublishSubject();
  subject.stream.map((value)=> value*2)
  .debounceTime(Duration(milliseconds: 300)).listen((data){
    print("processed : $data");
  });
  subject.add(5);
  subject.add(10);
  subject.close();
}
