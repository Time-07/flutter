import 'package:trans_app/app/modules/search/domain/entities/medico_entity.dart';

class MedicoModel extends MedicoEntity {
  MedicoModel(
      {required String name,
      required String email,
      required String password,
      required String cpf,
      required String gender,
      required int cellPhone,
      required String street,
      required int number,
      required String neighborhood,
      required String city,
      required String state,
      required String crmCrp,
      required String specialty,
      required int phone,
      required double value,
      required String description,
      required String courses,
      required String healthPlan,
      required bool bathroomSpecific,
      required String linkedin,
      required String photo})
      : super(
            photo: photo,
            name: name,
            email: email,
            password: password,
            cpf: cpf,
            gender: gender,
            cellPhone: cellPhone,
            street: street,
            number: number,
            neighborhood: neighborhood,
            city: city,
            state: state,
            crmCrp: crmCrp,
            specialty: specialty,
            phone: phone,
            value: value,
            description: description,
            courses: courses,
            healthPlan: healthPlan,
            bathroomSpecific: bathroomSpecific,
            linkedin: linkedin);
}
