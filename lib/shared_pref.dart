// import 'package:flutter/foundation.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class SetData extends ChangeNotifier {
//   SharedPreferences? prefs;
//   final String pageIndexKey = "pageIndex";
//   initPrefs() async {
//     prefs ??= await SharedPreferences.getInstance();
//   }

//   int? pageIndex;
//   SetData() {
//     pageIndex = 0;
//     loadFromPrefs();
//   }

//   saveIndexToPrefs({required int value}) async {
//     await initPrefs();
//     prefs!.setInt(pageIndexKey, value);
//   }

//   getIndexFromPrefs() async {
//     await initPrefs();
//     prefs!.getInt(pageIndexKey);
//   }

//   Future<int> loadFromPrefs() async {
//     await initPrefs();

//     pageIndex = prefs!.getInt(pageIndexKey) ?? 0;
//     notifyListeners();
//     return pageIndex!;
//   }

//   void changePageIndex(int newPageIndex) {
//     pageIndex = newPageIndex;

//     saveIndexToPrefs(value: newPageIndex);

//     notifyListeners();
//   }
// }
