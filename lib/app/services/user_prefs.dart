import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:jo_ken_pokemon/app/models/player_data_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPrefs extends ChangeNotifier {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  final playerData = PlayerDataModel();

  final _keyTotalMatches = 'totalmatches';
  final _keyUsername = 'username';
  final _keyBulbasaurWin = 'bulbasaurwin';

  void saveData(String key, value) async {
    final SharedPreferences preferences = await _prefs;
    preferences.setString(key, jsonEncode(value));
    //preferences.setString(key, playerData);
  }

  Future<void> setTotalMatches() async {
    final SharedPreferences preferences = await _prefs;
    int total = (preferences.getInt(_keyTotalMatches) ?? 0) + 1;
    await preferences.setInt(_keyTotalMatches, total);
  }

  Future<int> getTotalMatches() async {
    final SharedPreferences preferences = await _prefs;
    return preferences.getInt(_keyTotalMatches) ?? 0;
  }

  Future<void> setUsername(String username) async {
    final SharedPreferences preferences = await _prefs;
    await preferences.setString(_keyUsername, username);
  }

  Future<String> getUserName() async {
    final SharedPreferences preferences = await _prefs;
    return preferences.getString(_keyUsername) ?? '';
  }

  Future<void> setBulbasaurWin() async {
    final SharedPreferences preferences = await _prefs;
    int win = (preferences.getInt(_keyBulbasaurWin) ?? 0) + 1;
    await preferences.setInt(_keyBulbasaurWin, win);
  }

  Future<int> getBulbasaurWin() async {
    final SharedPreferences preferences = await _prefs;
    return preferences.getInt(_keyBulbasaurWin) ?? 0;
  }
}
