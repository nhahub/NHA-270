class User {
  final String email;
  final String name;
  final String password;

  User({
    required this.email,
    required this.name,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'name': name,
      'password': password,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      email: map['email'],
      name: map['name'],
      password: map['password'],
    );
  }
}
