import 'package:flutter/material.dart';
import 'package:trans_app/app/modules/search/domain/entities/medico_entity.dart';

class MockDoctors {
  List<MedicoEntity> list = [
    MedicoEntity(
      name: 'Maria Helena',
      email: 'maria.consultorio@mail.com',
      password: '',
      cpf: '',
      gender: 'Mulher Cisgênero',
      cellPhone: 11999999999,
      street: 'Av. Independência do Brasil',
      number: 1001,
      neighborhood: 'Centro',
      city: 'São Paulo',
      state: 'SP',
      crmCrp: '150786-SP',
      specialty: 'Psiquiatra',
      phone: 1133332222,
      value: 200.00,
      description:
          'Desde a faculdade sempre estive muito atenta a questão da saúde mental LGBT+, tenho e já tive pacientes trans de diferentes vivências e origens. No meu consultório você terá a garantia de encontrar um ambiente acolhedor e propício para conversarmos sobre a sua saúde sem julgamentos.',
      courses:
          'Formada em medicina pela Universidade Estadual do Piauí - UESPI, residência psiquiátrica no Instituto de Medicina Integral Professor Fernando Figueira (IMIP), especialização em Transtorno Depressivo e Bipolaridade pelo instituto de psicologia aplicada da Universidade de São Paulo.',
      healthPlan: 'Não',
      bathroomSpecific: false,
      linkedin: '',
      photo: "assets/endocrinologista.png",
    ),
    MedicoEntity(
      name: 'Suzana Paes',
      email: 'suzana.consultorio@mail.com',
      password: '',
      cpf: '',
      gender: 'Mulher Cisgênero',
      cellPhone: 1133332222,
      street: 'Rua Guimarães Rosa, 955',
      number: 102,
      neighborhood: 'Centro',
      city: 'Belo Horizonte',
      state: 'MG',
      crmCrp: '150776-MG',
      specialty: 'Ginecologista',
      phone: 3132589999,
      value: 150.00,
      description:
          'A minha experiência no DiverSaúde é a primeira vez que tenho contato com pacientes trans, porém a pauta da diversidade e da inclusão é algo que sempre respeitei muito. Conto com a sua confiança e paciência, e pode contar com meu compromisso em criar um ambiente seguro.',
      courses:
          'Médica há 31 anos, formada pelo ITPAC em Araguaína-Tocantins. Ginecologista e Obstetra há 5 anos pela UFRR, com experiência em Ultrassonografia há 8 anos. Contra o uso indiscriminado de Anticoncepcionais orais combinados e injetáveis. Certificada pela Elmeco para tratamentos com implantes hormonais.',
      healthPlan: 'Sim',
      bathroomSpecific: true,
      linkedin: '',
      photo: 'assets/psiquiatra.png',
    )
  ];
}
