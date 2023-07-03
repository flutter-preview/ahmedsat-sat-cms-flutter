import 'package:flutter/material.dart';
import 'package:sat_cms/screens/home_screen.dart';
import 'package:sat_cms/screens/login_screen.dart';
import 'package:sat_cms/screens/profile_screen.dart';
import 'package:sat_cms/screens/register_screen.dart';
import 'package:sat_cms/themes/dark_theme.dart';
import 'package:sat_cms/themes/light_theme.dart';
import 'package:sat_cms/utils/theme_state.dart';
import 'package:sat_cms/services/settings.dart';

void main() async {
  final setting = Settings();

  await setting.loadSettings();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final themeState = ThemeState();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: themeState,
      builder: (context, value, child) {
        return MaterialApp(
          title: 'Sat_CMS',
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: value,
          initialRoute: '/',
          routes: {
            HomeScreen.name: (context) => const HomeScreen(),
            LoginScreen.name: (context) => const LoginScreen(),
            RegisterScreen.name: (context) => const RegisterScreen(),
            ProfileScreen.name: (context) => const ProfileScreen(),
          },
        );
      },
    );
  }
}
