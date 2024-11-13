

class User {
  final int id;
  final String name;
  final String email;
  final Address address;

  User(
      {required this.id,
      required this.name,
      required this.email,
      required this.address});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      address: Address.fromJson(json['address']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'address': address.toJson(),
    };
  }
}

class Address {
  final String street;
  final String city;
  final String state;
  final String zipcode;

  Address(
      {required this.street,
      required this.city,
      required this.state,
      required this.zipcode});

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      street: json['street'],
      city: json['city'],
      state: json['state'],
      zipcode: json['zipcode'],
    );
  }

  Map<String,dynamic> toJson() {
    return {
      'street': street,
      'city': city,
      'state': state,
      'zipcode': zipcode,
    };
  }
}
