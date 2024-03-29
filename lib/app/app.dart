import 'package:flutter/material.dart';
import 'package:tutorial_app/presentation/resources/routes_manager.dart';
import 'package:tutorial_app/presentation/resources/theme_manager.dart';

class MyApp extends StatefulWidget {

  const MyApp._internal(); //private named constructor

  static const MyApp instance = MyApp._internal(); // single instance -- singleton

  factory MyApp() => instance; // factory for this class instance

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
      theme: getApplicationTheme(),
    );
  }
}
