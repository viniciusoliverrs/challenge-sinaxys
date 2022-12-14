import 'package:challenge_sinaxys/src/core/presenter/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../app_routes.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    _goToNextScreen();
  }

  _goToNextScreen() async {
    await Future.delayed(const Duration(seconds: 3), () async {
      await Navigator.pushReplacementNamed(
          context, AppRoutes.paymentVoucherView);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Lottie.asset('assets/lottiefiles/splash.json',
                  width: 200, height: 200),
            ),
            const SizedBox(height: 30),
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: SizedBox(
                  width: 200,
                  child: LinearProgressIndicator(
                    backgroundColor: AppColors.purpleDark.withOpacity(0.3),
                    minHeight: 7,
                    valueColor:
                        const AlwaysStoppedAnimation<Color>(AppColors.primary),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
