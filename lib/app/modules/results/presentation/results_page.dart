import 'package:flutter/material.dart';
import 'package:trans_app/app/modules/results/presentation/widgets/doctor_card.dart';
import 'package:trans_app/app/modules/results/presentation/widgets/no_doctors_found.dart';
import 'package:trans_app/app/modules/search/domain/entities/medico_entity.dart';
import 'package:trans_app/app/modules/search/presentation/widgets/custom_search_appbar.dart';
import 'package:trans_app/app/widgets/custom_app_bar.dart';
import 'package:trans_app/app/widgets/custom_bottom_nav_bar.dart';
import 'package:trans_app/app/widgets/custom_icon_text.dart';
import 'package:trans_app/app/widgets/custom_label_container.dart';

class ResultsPage extends StatefulWidget {
  const ResultsPage({Key? key, required this.doctors}) : super(key: key);

  final List<MedicoEntity> doctors;

  @override
  State<ResultsPage> createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomSearchAppBar(tittle: 'Resultados'),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Text(
                  widget.doctors.length == 1
                      ? '${widget.doctors.length} resultado'
                      : '${widget.doctors.length} resultados',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                widget.doctors.isNotEmpty
                    ? ListView.builder(
                        itemCount: widget.doctors.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return DoctorCard(
                              name: widget.doctors[index].name,
                              specialty: widget.doctors[index].specialty,
                              value: widget.doctors[index].value,
                              city: widget.doctors[index].city,
                              state: widget.doctors[index].state);
                        })
                    : const NoDoctorsFound(),
              ],
            )),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
