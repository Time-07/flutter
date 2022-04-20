import 'package:trans_app/app/modules/register/domain/entities/roles_entity.dart';

class RolesModel extends RolesEntity{
  RolesModel({
    required String name,
    required String id,
  }) : super(
          name: name,
          id: id,
        );

        factory RolesModel.fromJson(Map<String, dynamic> json){
    return RolesModel(
          name: json['name'],
          id: json['id'],
    );
  }
}