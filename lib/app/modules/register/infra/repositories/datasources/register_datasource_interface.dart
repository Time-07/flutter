import '../../../domain/entities/user_entity.dart';

abstract class IRegisterDatasource{
  Future<UserEntity> register(String name, String cpf, String email, String password, String gender);
}