import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:trans_app/app/modules/doctor/presentation/doctor_controller.dart';
import 'package:trans_app/app/modules/doctor/presentation/widgets/custom_contact.dart';
import 'package:trans_app/app/modules/search/domain/entities/medico_entity.dart';
import 'package:trans_app/app/widgets/custom_app_bar.dart';
import 'package:trans_app/app/widgets/custom_bottom_nav_bar.dart';
import 'package:trans_app/app/widgets/custom_elevated_button.dart';
import 'package:trans_app/app/widgets/custom_icon_text.dart';
import 'package:trans_app/app/widgets/custom_label_container.dart';

class DoctorPage extends StatefulWidget {
  DoctorPage({Key? key, required this.doctor}) : super(key: key);
  final MedicoEntity doctor;

  @override
  State<DoctorPage> createState() => _DoctorPageState();
}

class _DoctorPageState extends ModularState<DoctorPage, DoctorController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        height: 90,
        backPage: true,
      ),
      body: SingleChildScrollView(
        controller: controller.pageController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            const Center(
              child: CircleAvatar(
                radius: 60,
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: Text(
                widget.doctor.name,
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomLabelContainer(text: widget.doctor.specialty),
                SizedBox(width: 10),
                Text(
                  'CRM: ${widget.doctor.crmCrp}',
                  style: Theme.of(context).textTheme.headline6,
                )
              ],
            ),
            Divider(color: Theme.of(context).colorScheme.primary, thickness: 2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Atendimento',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  const SizedBox(height: 10),
                  const CustomIconText(
                    text: 'Presencial e Online',
                    icon: Icons.forum_outlined,
                  ),
                  Divider(
                      color: Theme.of(context).colorScheme.primary,
                      thickness: 2),
                  CustomIconText(
                    text: 'R\$ ${widget.doctor.value.toString()}',
                    icon: Icons.request_quote_outlined,
                  ),
                  Divider(
                      color: Theme.of(context).colorScheme.primary,
                      thickness: 2),
                  CustomIconText(
                    text:
                        '${widget.doctor.city}-${widget.doctor.state}\n${widget.doctor.street}, ${widget.doctor.neighborhood}, ${widget.doctor.number}',
                    icon: Icons.location_on,
                  ),
                  Divider(
                      color: Theme.of(context).colorScheme.primary,
                      thickness: 2),
                  widget.doctor.healthPlan.isNotEmpty
                      ? const CustomLabelContainer(
                          text: 'Atende convênio',
                          checkMark: true,
                        )
                      : Container(),
                  const SizedBox(height: 10),
                  widget.doctor.bathroomSpecific
                      ? const CustomLabelContainer(
                          text: 'Banheiro inclusivo',
                          checkMark: true,
                        )
                      : Container(),
                  const SizedBox(height: 24),
                  CustomElevatedButton(
                    texto: 'Contato',
                    onPressedCall: () {
                      controller.pageController.animateTo(
                        1000,
                        duration: const Duration(seconds: 3),
                        curve: Curves.easeOut,
                      );
                    },
                    icone: Icons.phone,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Divider(color: Theme.of(context).colorScheme.primary, thickness: 2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Experiência com pacientes trans',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.doctor.description,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
            Divider(color: Theme.of(context).colorScheme.primary, thickness: 2),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Currículo e formação',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.doctor.courses,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              color: Theme.of(context).colorScheme.primary,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    Text(
                      'Contato',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    const SizedBox(height: 10),
                    CustomContact(
                        text: widget.doctor.phone.toString(),
                        icon: Icons.phone),
                    const SizedBox(height: 10),
                    CustomContact(
                        text: widget.doctor.cellPhone.toString(),
                        icon: Icons.whatsapp),
                    const SizedBox(height: 10),
                    CustomContact(
                        text: widget.doctor.email, icon: Icons.email_outlined),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
