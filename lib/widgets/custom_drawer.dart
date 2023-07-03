import 'package:flutter/material.dart';
import 'package:sat_cms/widgets/theme_widget.dart';

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
  return DrawerHeader(
    margin: EdgeInsets.zero,
    padding: EdgeInsets.zero,
    decoration: BoxDecoration(
      color: Theme.of(context).colorScheme.primary,
    ),
    child: Stack(children: [
      const Positioned(
        top: 5,
        left: 5,
        child: CircleAvatar(
          maxRadius: 40,
          child: Icon(Icons.person, size: 75),
        ),
      ),
      Positioned(
        top: 10,
        right: 10,
        child: ThemeIcon(),
      )
    ]),
  );
}
