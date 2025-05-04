import 'package:flutter/material.dart';
import 'package:mi_primer_app/routes/app_routes.dart';
import 'package:mi_primer_app/screens/screens.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(), // se usa el método dinámico
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
