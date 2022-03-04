import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:soundly/page/home/widgets/button.dart';
import 'package:soundly/page/home/widgets/theme_icon_button.dart';
import 'package:soundly/responsive/responsive.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> _widgets = [
      const Expanded(
        flex: 2,
        child: RiveAnimation.asset("assets/rive/soundly_rive.riv"),
      ),
      isDesktop(context, 800)
          ? const SizedBox()
          : const Text("Find your Sound Aura"),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
          child: Button(
            buttonWid: const [
              Icon(CupertinoIcons.play_arrow_solid),
              SizedBox(width: 10),
              Text("Start"),
            ],
            function: () {
              Navigator.pushNamed(context, "/prep");
            },
          ),
        ),
      )
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Soundly'),
        actions: const [
          ThemeIconButton(),
        ],
      ),
      body: isDesktop(context, 800)
          ? Row(children: _widgets)
          : Column(children: _widgets),
    );
  }
}
