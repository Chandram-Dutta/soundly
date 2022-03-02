import 'package:flutter/material.dart';
import 'package:soundly/page/home/widgets/theme_icon_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Soundly'),
        actions: const [ThemeIconButton()],
      ),
    );
  }
}
