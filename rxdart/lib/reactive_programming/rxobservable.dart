import 'package:rxdart/rxdart.dart';

Future<String> fetchData(int id) async {
  await Future.delayed(Duration(seconds: 1));
  return "Fetched data for $id";
}

void main() {
  final rxconcat = BehaviorSubject<int>();

  rxconcat.stream
      .concatMap((id) {
    return Observable.fromFuture(fetchData(id));
  })
      .listen(print);
  rxconcat.add(1);
  rxconcat.add(2);
  rxconcat.add(3);
}