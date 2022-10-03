import 'package:flutter/material.dart';
import 'package:whatssap_clone/colors.dart';
import 'package:whatssap_clone/responsive/responsive_layout.dart';
import 'package:whatssap_clone/screens/mobile_screen_layout.dart';
import 'package:whatssap_clone/screens/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatssap UI',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
