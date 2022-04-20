import '../../../domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    required String name,
    required String email,
    required String password,
    required String cpf,
    required String gender,
  }) : super(
          name: name,
          email: email,
          password: password,
          cpf: cpf,
          gender: gender,
        );

        factory UserModel.fromJson(Map<String, dynamic> json){
    return UserModel(
          name: json['name'],
          email: json['email'],
          password: json['password'],
          cpf: json['cpf'],
          gender: json['gender'],
    );
  }
}
