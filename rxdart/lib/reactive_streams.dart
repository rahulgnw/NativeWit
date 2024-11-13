import 'dart:async';



void main() {

  final controller = StreamController<int>();

  controller.stream.listen((data) {
    print("Received: $data");
  });


  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);

  controller.close();
}