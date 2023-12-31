import 'package:cineappflutter/config/router/app_router.dart';
import 'package:cineappflutter/config/theme/app_theme.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/material.dart';

Future main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
      routerConfig: appRouter,
    );
  }
}
