import 'package:trans_app/app/modules/search/domain/entities/medico_entity.dart';

class MockDoctors {
  List<MedicoEntity> list = [
    MedicoEntity(
        name: 'Dra. Silvia Maranhão',
        email: 'silvia@mail.com.br',
        password: '',
        cpf: '',
        gender: 'Mulher Cis',
        cellPhone: 31999999999,
        street: 'Avenida Brasil, 644',
        number: 266,
        neighborhood: 'Centro',
        city: 'Fortaleza',
        state: 'CE',
        crmCrp: '09/222222',
        specialty: 'Endocrinologista',
        phone: 3132589999,
        value: 100.00,
        description:
            'Atendo pessoas trans em transição hormonal desde 2012. Tenho ampla experiência no assunto e atuo em todos os estágios do procedimento, das primeiras consultas, passando por todo o início da terapia hormonal até.',
        courses:
            'Atendo pessoas trans em transição hormonal desde 2012. Tenho ampla experiência no assunto e atuo em todos os estágios do procedimento, das primeiras consultas, passando por todo o início da terapia hormonal até.',
        healthPlan: 'UNIMED',
        bathroomSpecific: true,
        linkedin: '')
  ];
}
