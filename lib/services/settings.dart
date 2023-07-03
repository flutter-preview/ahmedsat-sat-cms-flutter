import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sat_cms/utils/const.dart';

const _darkMode = 'dark';
const _lightMode = 'light';
const _systemMode = 'system';

class Settings {
  Settings._sharedInstance();
  static final Settings _shared = Settings._sharedInstance();
  factory Settings() => _shared;

  late SharedPreferences _preferences;

  late ThemeMode _themeMode;
  set themeMode(ThemeMode mode) {
    _themeMode = mode;
    _preferences.setString(
        themeModeValueName,
        mode == ThemeMode.system
            ? _systemMode
            : mode == ThemeMode.light
                ? _lightMode
                : _darkMode);
  }

  ThemeMode get themeMode => _themeMode;

  Future<void> loadSettings() async {
    _preferences = await SharedPreferences.getInstance();
    String savedMod = _preferences.getString(themeModeValueName) ?? 'system';
    _themeMode = savedMod == _lightMode
        ? ThemeMode.light
        : savedMod == _darkMode
            ? ThemeMode.dark
            : ThemeMode.system;
  }
}
