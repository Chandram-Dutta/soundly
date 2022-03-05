import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:soundly/page/home/widgets/button.dart';
import 'package:soundly/page/home/widgets/theme_icon_button.dart';
import 'package:soundly/responsive/responsive.dart';

class PrepPage extends StatelessWidget {
  const PrepPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> _widgets = [
      const Expanded(
        flex: 1,
        child: SizedBox(
          child: RiveAnimation.asset("assets/rive/headp.riv"),
        ),
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Put Your Headphones On"),
              const SizedBox(height: 5),
              TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.secondary,
                        width: 0.0),
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
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 20, left: 20, right: 20, top: 20),
                child: Button(
                  buttonWid: const [
                    Icon(CupertinoIcons.hand_thumbsup_fill),
                    SizedBox(width: 10),
                    Text("Done"),
                  ],
                  function: () {},
                ),
              )
            ],
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
