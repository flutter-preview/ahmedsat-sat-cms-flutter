import 'package:flutter/material.dart';
import 'package:sat_cms/widgets/custom_drawer.dart';

class MyScreen extends StatelessWidget {
  const MyScreen({Key? key}) : super(key: key);
  final title = 'MyScreen';
  final body = const Center(
    child: Text('some content'),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: const MyDrawer(),
      body: body,
    );
  }
}
