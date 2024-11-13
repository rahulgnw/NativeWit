import 'package:rxdart/rxdart.dart';

void main() {
  final behaviorSubject = BehaviorSubject<int>();

  behaviorSubject.sink.add(10);
  behaviorSubject.sink.add(20);

  behaviorSubject.stream.listen((data){
    print("behaviorSubject Recieved: $data");
  });

  behaviorSubject.sink.add(30);
  behaviorSubject.close();
}