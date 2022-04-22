import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:trans_app/app/modules/search/domain/entities/medico_entity.dart';
import 'package:trans_app/common/widgets/custom_icon_text.dart';
import 'package:trans_app/common/widgets/custom_label_container.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({Key? key, required this.doctor}) : super(key: key);

  final MedicoEntity doctor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Container(
        height: 300,
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).colorScheme.primary,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Image(image: AssetImage(doctor.photo)),
                          radius: 50,
                        ),
                        const SizedBox(width: 16),
                        Flexible(
                          child: Text(
                            doctor.name,
                            style: Theme.of(context).textTheme.headline3,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomLabelContainer(text: doctor.specialty),
                            const SizedBox(height: 16),
                            CustomIconText(
                                text: 'R\$ ${doctor.value}',
                                icon: Icons.request_quote_outlined)
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomIconText(
                              text: '${doctor.city}\n${doctor.state}',
                              icon: Icons.location_on,
                            ),
                            const SizedBox(height: 16),
                            const CustomIconText(
                              text: 'Presencial e Online',
                              icon: Icons.forum_outlined,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  Modular.to.navigate('/doctor', arguments: doctor);
                },
                child: Container(
                    color: Theme.of(context).colorScheme.tertiary,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.person_search_rounded),
                        Text(
                          'Ver perfil',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ],
                    )),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
