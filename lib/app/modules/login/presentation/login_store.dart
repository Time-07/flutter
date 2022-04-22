import 'package:flutter/material.dart';
import 'package:trans_app/common/enums/status.dart';

class LoginStore {
  final ValueNotifier<Status> loginStatus = ValueNotifier(Status.none);
}
