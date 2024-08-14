import 'package:coffee_app/navigation/routes/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MainApp(),
  );
}

class MainApp extends StatelessWidget {
  MainApp({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      routerConfig: _appRouter.config(),
    );
  }
}
