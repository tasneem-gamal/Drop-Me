import 'package:dropme/core/di/dependency_injection.dart';
import 'package:dropme/core/utils/shared_preference_helper.dart';
import 'package:dropme/drop_me.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setUpGetIt();
  final showOnboarding = await SharedPreferenceHelper.isOnboardingSeen();
  runApp(DropMe(showOnboarding: !showOnboarding,));
}

