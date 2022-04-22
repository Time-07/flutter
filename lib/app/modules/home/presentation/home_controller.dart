import 'package:flutter/material.dart';
import 'package:trans_app/app/modules/home/presentation/pages/prepesquisa/pre_pesquisa_page.dart';
import 'package:trans_app/app/modules/home/presentation/pages/sobre/sobre_page.dart';

class HomeController {
  ValueNotifier<int> page = ValueNotifier(0);

  Widget rendePage() {
    if (page.value == 0) {
      return PrePesquisa();
    }

    return SobrePage();
  }
}
