import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key? key, required this.function, required this.buttonWid})
      : super(key: key);

  final function;
  final List<Widget> buttonWid;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 50,
      child: ElevatedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: buttonWid,
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
        onPressed: function,
      ),
    );
  }
}
