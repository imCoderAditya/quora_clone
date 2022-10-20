import 'package:flutter/material.dart';
import 'package:quora_clone/response/responsive_screen.dart';
import 'package:quora_clone/utils/color_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quora',
      debugShowCheckedModeBanner: false,
      theme: themeDataLight,
      darkTheme: themeDataDark,
      themeMode: ThemeMode.light,
      home: const ResponsiveScreen(),
    );
  }
}
