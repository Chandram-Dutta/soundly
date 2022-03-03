import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:soundly/page/home/widgets/theme_icon_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Soundly'),
        actions: const [
          ThemeIconButton(),
        ],
      ),
      body: Column(children: [
        const Expanded(
          flex: 2,
          child: RiveAnimation.asset("assets/rive/soundly_rive.riv"),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: ElevatedButton(
                child: Row(
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
      ]),
    );
  }
}
