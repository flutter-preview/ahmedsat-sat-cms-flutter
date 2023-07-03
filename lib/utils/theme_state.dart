import 'package:flutter/material.dart';
import 'package:sat_cms/utils/const.dart';
import 'package:sat_cms/services/settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _darkMode = 'dark';
const _lightMode = 'light';
const _systemMode = 'system';

final _settings = Settings();

class ThemeState extends ValueNotifier<ThemeMode> {
  ThemeState._sharedInstance() : super(_settings.themeMode);
  static final ThemeState _shared = ThemeState._sharedInstance();
  factory ThemeState() => _shared;

  @override
  set value(ThemeMode newMod) {
    _settings.themeMode = newMod;
    super.value = newMod;
  }

  void nextTheme() {
    value = value == ThemeMode.system
        ? ThemeMode.light
        : value == ThemeMode.light
            ? ThemeMode.dark
            : ThemeMode.system;
  }
}
