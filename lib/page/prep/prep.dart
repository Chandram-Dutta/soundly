import 'package:flutter/material.dart';
import 'package:soundly/page/home/widgets/theme_icon_button.dart';
import 'package:soundly/responsive/responsive.dart';

class PrepPage extends StatelessWidget {
  const PrepPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> _widgets = [
      const Expanded(flex: 2, child: Placeholder()),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: TextField(
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.secondary, width: 0.0),
              ),
              labelText: "Name",
              labelStyle: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              hintText: 'Enter your Name',
            ),
          ),
        ),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Soundly'),
        actions: const [ThemeIconButton()],
      ),
      body: isDesktop(context, 800)
          ? Row(children: _widgets)
          : Column(children: _widgets),
    );
  }
}
