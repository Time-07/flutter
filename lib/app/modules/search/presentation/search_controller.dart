import 'package:flutter/cupertino.dart';

class SearchController {
  ValueNotifier<String> specialty = ValueNotifier('');
  ValueNotifier<String> gender = ValueNotifier('');
  String city = '';
  String name = '';
}
