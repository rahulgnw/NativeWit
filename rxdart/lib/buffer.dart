import 'package:rxdart/rxdart.dart';

void main() {
  final source = PublishSubject<int>();
  final trigger = PublishSubject<void>();

  source.buffer(trigger).listen(print); // Emits list of buffered values

  source.add(1);
  source.add(2);
  trigger.add(null); // Triggers buffer, output: [1, 2]
}
