import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soundly/themes/dark_theme.dart';
import 'package:soundly/themes/light_theme.dart';

final themeProvider = StateProvider<ThemeData>((ref) {
  var brightness = SchedulerBinding.instance!.window.platformBrightness;
  if (brightness == Brightness.dark) {
    return darkTheme;
  } else if (brightness == Brightness.light) {
    return lightTheme;
  } else {
    return lightTheme;
  }
});

final themeIconProvider = StateProvider<IconData>((ref) {
  var brightness = SchedulerBinding.instance!.window.platformBrightness;
  if (brightness == Brightness.dark) {
    return CupertinoIcons.moon;
  } else if (brightness == Brightness.light) {
    return CupertinoIcons.sun_max;
  } else {
    return CupertinoIcons.sun_max;
  }
});

final isDarkThemeProvider = StateProvider<bool>((ref) {
  var brightness = SchedulerBinding.instance!.window.platformBrightness;
  if (brightness == Brightness.dark) {
    return true;
  } else if (brightness == Brightness.light) {
    return false;
  } else {
    return false;
  }
});
