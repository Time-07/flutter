import 'package:trans_app/app/modules/login/domain/entities/user_entity.dart';
import 'package:trans_app/app/modules/login/domain/usecases/login.dart';

abstract class ILoginDatasource{
  Future<UserEntity> login(String email, String password);
}