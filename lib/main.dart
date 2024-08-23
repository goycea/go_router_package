import 'package:flutter/material.dart';
import 'package:go_router_package/navigation/app_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: AppNavigation.router);
  }
}
