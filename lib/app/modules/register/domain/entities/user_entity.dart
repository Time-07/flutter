class UserEntity {
  final String name;
  final String email;
  final String password;
  final String cpf;
  final String gender;

  UserEntity({
    required this.name,
    required this.email,
    required this.password,
    required this.cpf,
    required this.gender,
  });

  @override
  String toString() {
    return name;
  }
}
