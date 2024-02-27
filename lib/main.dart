import 'package:e_learning_frontend/routes/route_names.dart';
import 'package:e_learning_frontend/routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
      initialRoute: RouteNames.signUp,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
