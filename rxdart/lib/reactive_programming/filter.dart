import 'package:rxdart/rxdart.dart';

void main() {
  final subject = BehaviorSubject<int>();

  subject.stream
      .where((number) => number > 10)

      .listen(print);
  subject.add(5);
  subject.add(15);
  subject.add(3);
  subject.add(8);
  subject.add(12);
}
