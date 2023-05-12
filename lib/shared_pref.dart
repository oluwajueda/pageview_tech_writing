import 'package:shared_preferences/shared_preferences.dart';

class SetData {
  SharedPreferences? prefs;
  final String pageIndexKey = "pageIndex";
  initPrefs() async {
    prefs ??= await SharedPreferences.getInstance();
  }

  saveIndexToPrefs(int value) async {
    await initPrefs();
    prefs!.setInt(pageIndexKey, value);
  }

  getIndexFromPrefs() async {
    await initPrefs();
    prefs!.get(pageIndexKey);
  }
}
