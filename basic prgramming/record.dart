//Record and pattern
void main(){
  (String, int, double, {int age, String name}) x =
  ("23", 0, 77.0, age: 20, name: "Doe");
  print(x.$2);
  print(x.name);
}
