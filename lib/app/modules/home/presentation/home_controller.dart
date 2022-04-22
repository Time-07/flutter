import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:trans_app/app/modules/home/presentation/pages/prepesquisa/pre_pesquisa_page.dart';
import 'package:trans_app/app/modules/home/presentation/pages/sobre/sobre_page.dart';

class HomeController {
  ValueNotifier<int> page = ValueNotifier(0);

  _loadTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var nome = prefs.getString('email');
  }

  Widget rendePage() {
    if (page.value == 0) {
      return const PrePesquisa();
    }

    return const SobrePage();
  }
}
