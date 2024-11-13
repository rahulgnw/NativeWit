
class User {
  String name;
  int age;

  User({required this.name, required this.age});

  // Convert a User object into a Map
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
    };
  }

  // Create a User object from a Map
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      age: json['age'],
    );
  }
}