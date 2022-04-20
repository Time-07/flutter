import 'package:trans_app/app/modules/login/infra/repositories/models/User_model.dart';

abstract class ILoginDatasource {
  Future<UserModel> login(String email, String password);
}
