import 'package:flutter/material.dart';
import 'package:sat_cms/screens/home_screen.dart';
import 'package:sat_cms/screens/login_screen.dart';
import 'package:sat_cms/screens/profile_screen.dart';
import 'package:sat_cms/screens/register_screen.dart';
import 'package:sat_cms/themes/dark_theme.dart';
import 'package:sat_cms/themes/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sat_CMS',
      theme: lightTheme,
      darkTheme: darkTheme,
      // themeMode: ThemeMode.light,
      themeMode: ThemeMode.dark,
      initialRoute: '/',
      routes: {
        HomeScreen.name: (context) => const HomeScreen(),
        LoginScreen.name: (context) => const LoginScreen(),
        RegisterScreen.name: (context) => const RegisterScreen(),
        ProfileScreen.name: (context) => const ProfileScreen(),
      },
    );
  }
}
