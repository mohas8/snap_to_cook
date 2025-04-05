import 'package:flutter/material.dart';
import 'routes/app_routes.dart';
import 'shared/themes/app_theme.dart';

void main() {
  runApp(SnapToCookApp());
}

class SnapToCookApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snap to Cook',
      theme: AppTheme.lightTheme,
      initialRoute: AppRoutes.home,
      routes: AppRoutes.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
