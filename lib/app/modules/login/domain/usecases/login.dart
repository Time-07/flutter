import 'package:trans_app/app/modules/login/domain/entities/user_entity.dart';
import 'package:trans_app/app/modules/login/domain/repositories/login_repository_interface.dart';

abstract class ILogin{
  Future call(String email, String password);
}

class Login extends ILogin{
  final ILoginRepository _loginRepository;

  Login({required ILoginRepository loginRepository}):_loginRepository = loginRepository;

  //TODO : verificar resposta do login
  @override
  Future<UserEntity> call(String email, String password) async{
    var user = await _loginRepository.login(email, password);
    return UserEntity(id: user.id, name: user.name, email: user.email, password: user.password, cpf: user.cpf, phone: user.phone, cellphone: user.cellphone, crmCrp: user.crmCrp, gender: user.gender, specialty: user.specialty, street: user.street, number: user.number, neighborhood: user.neighborhood, city: user.city, state: user.state, price: user.price, description: user.description, courses: user.courses, healthPlan: user.healthPlan, bathroomSpecifc: user.bathroomSpecifc, linkedin: user.linkedin);
  }
}