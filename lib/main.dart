import 'package:dropme/core/utils/shared_preference_helper.dart';
import 'package:dropme/drop_me.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final showOnboarding = await SharedPreferenceHelper.isOnboardingSeen();
  runApp(DropMe(showOnboarding: !showOnboarding,));
}

