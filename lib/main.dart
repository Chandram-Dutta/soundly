import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soundly/page/home/home.dart';
import 'package:soundly/page/prep/prep.dart';
import 'package:soundly/provider/theme_provider.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Soundly',
      theme: ref.watch(themeProvider),
      routes: {
        '/': (context) => const HomePage(),
        '/prep': (context) => const PrepPage(),
      },
      initialRoute: '/',
    );
  }
}
