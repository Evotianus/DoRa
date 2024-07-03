import 'package:dora_app/core/palette.dart';
import 'package:dora_app/features/article/pages/article_page.dart';
import 'package:dora_app/features/article/pages/detail_article_page.dart';
import 'package:dora_app/features/authentication/pages/login_page.dart';
import 'package:dora_app/features/authentication/pages/register_page.dart';
import 'package:dora_app/features/authentication/pages/verification_page.dart';
import 'package:dora_app/features/history/pages/history_page.dart';
import 'package:dora_app/features/home/pages/home_page.dart';
import 'package:dora_app/features/location/pages/detail_location_page.dart';
import 'package:dora_app/features/location/pages/location_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Palette.whiteColor,
      ),
      debugShowCheckedModeBanner: false,
      title: 'DoRa App',
      home: const HomePage(),
    );
  }
}
