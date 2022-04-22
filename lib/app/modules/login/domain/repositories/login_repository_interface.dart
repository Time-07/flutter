import 'package:trans_app/app/modules/login/domain/entities/user_entity.dart';

abstract class ILoginRepository {
  Future<UserEntity> login(String email, String password);
}
