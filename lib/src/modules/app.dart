import 'package:challenge_sinaxys/src/modules/splash/views/splash_view.dart';
import 'package:flutter/material.dart';

import 'app_routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splashView,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
