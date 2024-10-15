//this program shows the example of string
import 'dart:async';
void main() {
  final controller = StreamController<String>();

  final subscription = controller.stream.listen((String data) {
    print(data);
  });
  controller.sink.add("Data!");
}