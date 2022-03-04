import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
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
      Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            height: 50,
            child: ElevatedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(CupertinoIcons.play_arrow_solid),
                  SizedBox(width: 10),
                  Text("Start"),
                ],
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(
                    Theme.of(context).colorScheme.secondary),
              ),
              onPressed: () {},
            ),
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
