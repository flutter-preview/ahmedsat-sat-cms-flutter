import 'package:flutter/material.dart';
import 'package:sat_cms/utils/const.dart';
import 'package:sat_cms/utils/theme_state.dart';

class ThemeIcon extends StatelessWidget {
  ThemeIcon({
    super.key,
  });

  final _themeState = ThemeState();

  @override
  Widget build(BuildContext context) {
    final themeState = ThemeState();
    return ValueListenableBuilder(
      valueListenable: themeState,
      builder: (context, value, child) {
        return IconButton(
          onPressed: () => _themeState.nextTheme(),
          icon: Icon(
            _themeState.value == ThemeMode.system
                ? iconSystem
                : _themeState.value == ThemeMode.light
                    ? iconLight
                    : iconDark,
          ),
        );
      },
    );
  }
}
