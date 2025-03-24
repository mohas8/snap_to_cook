import 'package:flutter/material.dart';
import 'routes/app_routes.dart';
import 'shared/themes/app_theme.dart';

void main() {
  runApp(const FlavorLensApp());
}

class FlavorLensApp extends StatelessWidget {
  const FlavorLensApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlavorLens',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: AppRoutes.home,
      routes: AppRoutes.routes,
    );
  }
}
