class MedicoEntity {
  final String name;
  final String email;
  final String password;
  final String cpf;
  final String gender;
  final int cellPhone;
  final String street;
  final int number;
  final String neighborhood;
  final String city;
  final String state;
  final String crmCrp;
  final String specialty;
  final int phone;
  final double value;
  final String description;
  final String courses;
  final String healthPlan;
  final bool bathroomSpecific;
  final String linkedin;

  MedicoEntity({
      required this.name,
      required this.email,
      required this.password,
      required this.cpf,
      required this.gender,
      required this.cellPhone,
      required this.street,
      required this.number,
      required this.neighborhood,
      required this.city,
      required this.state,
      required this.crmCrp,
      required this.specialty,
      required this.phone,
      required this.value,
      required this.description,
      required this.courses,
      required this.healthPlan,
      required this.bathroomSpecific,
      required this.linkedin});
}
