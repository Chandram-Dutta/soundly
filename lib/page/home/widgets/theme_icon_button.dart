
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soundly/provider/theme_provider.dart';
import 'package:soundly/themes/dark_theme.dart';
import 'package:soundly/themes/light_theme.dart';

class ThemeIconButton extends ConsumerStatefulWidget {
  const ThemeIconButton({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<ThemeIconButton> createState() => _ThemeIconButtonState();
}

class _ThemeIconButtonState extends ConsumerState<ThemeIconButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          if (Theme.of(context).brightness == Brightness.light) {
            setState(() {
              ref.read(themeIconProvider.state).state = CupertinoIcons.moon;
              ref.read(themeProvider.state).state = darkTheme;
              ref.read(isDarkThemeProvider.state).state = true;
            });
          } else {
            setState(() {
              ref.read(themeIconProvider.state).state = CupertinoIcons.sun_max;
              ref.read(themeProvider.state).state = lightTheme;
              ref.read(isDarkThemeProvider.state).state = false;
            });
          }
        },
        tooltip: "Change Theme",
        icon: Icon(
          ref.watch(themeIconProvider),
        ));
  }
}
