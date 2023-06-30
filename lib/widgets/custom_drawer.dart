import 'package:flutter/material.dart';

class MyDrawer extends Drawer {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _createHeader(context),
        ],
      ),
    );
  }
}

Widget _createHeader(BuildContext context) {
  return const DrawerHeader(
    margin: EdgeInsets.zero,
    padding: EdgeInsets.zero,
    decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage('assets/images/drawer_header_background.png'),
      ),
    ),
    child: Stack(),
  );
}
