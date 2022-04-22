import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:trans_app/app/modules/home/presentation/home_controller.dart';
import 'package:trans_app/app/widgets/custom_app_bar.dart';
import 'package:trans_app/app/widgets/custom_bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        height: 90,
      ),
      body: SingleChildScrollView(
        child: ValueListenableBuilder(
            valueListenable: controller.page,
            builder: (context, value, _) {
              return controller.rendePage();
            }),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        page: controller.page,
      ),
    );
  }
}
