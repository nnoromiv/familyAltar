// ignore_for_file: unused_import

import 'package:familyaltar/screens/log_in.dart';
import 'package:familyaltar/widgets/loading.dart';
import 'package:familyaltar/screens/navigation.dart';
import 'package:familyaltar/screens/sign_up.dart';
import 'package:familyaltar/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future main() async {
  await dotenv.load(fileName: 'assets/.env');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Family Altar',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        home: const Navigation());
  }
}
