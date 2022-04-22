import '../../../register/domain/entities/user_entity.dart';
import '../repositories/register_repository_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class IRegister {
  Future call(
      String name, String cpf, String email, String password, String gender);
}

class Register extends IRegister {
  final IRegisterRepository _registerRepository;

  Register({required IRegisterRepository registerRepository})
      : _registerRepository = registerRepository;

  @override
  Future<UserEntity> call(String name, String cpf, String email,
      String password, String gender) async {
    var user =
        await _registerRepository.register(name, cpf, email, password, gender);
    savePref(email, password);
    return UserEntity(
        name: user.name,
        email: user.email,
        password: user.password,
        cpf: user.cpf,
        gender: user.gender);
  }

  savePref(String email, String password) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    preferences.setString("email", email);
    preferences.setString("password", password);
    preferences.commit();
  }
}
