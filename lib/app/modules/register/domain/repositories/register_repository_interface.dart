import '../../../register/domain/entities/user_entity.dart';

abstract class IRegisterRepository{
  Future <UserEntity> register(String name, String cpf, String email, String password, String gender);
}