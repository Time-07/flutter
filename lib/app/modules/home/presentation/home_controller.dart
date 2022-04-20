import 'package:shared_preferences/shared_preferences.dart';

class HomeController {
    _loadTheme() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var nome = prefs.getString('email');
}
}
