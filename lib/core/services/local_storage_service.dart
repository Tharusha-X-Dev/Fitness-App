import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  static const String firstLaunchKey = 'isFirstLaunch';

  Future<bool> isFirstLaunch() async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.getBool(firstLaunchKey) ?? true;
  }

  Future<void> setFirstLaunchDone() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setBool(firstLaunchKey, false);
  }
}
