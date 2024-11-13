class ImmutableUser  {
  final String name;
  final int age;
  ImmutableUser (this.name, this.age);
  ImmutableUser  withName(String newName) {
    return ImmutableUser (newName, this.age);
  }
  ImmutableUser  withAge(int newAge) {
    return ImmutableUser (this.name, newAge);
  }
}

void main() {
  final user1 = ImmutableUser ('Alice', 30);
  final user2 = user1.withName('Bob');
  print('User  1: ${user1.name}, Age: ${user1.age}'); // User 1: Alice, Age: 30
  print('User  2: ${user2.name}, Age: ${user2.age}'); // User 2: Bob, Age: 30
}