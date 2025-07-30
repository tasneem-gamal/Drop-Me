import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper {

  static Future<void> setOnboardingSeen() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setBool('save_onboarding', true);
}

static Future<bool> isOnboardingSeen() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getBool('save_onboarding') ?? false;
}

}
