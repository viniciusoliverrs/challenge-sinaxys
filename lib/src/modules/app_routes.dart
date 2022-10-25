import 'package:flutter/material.dart';

import 'payment_voucher/views/payment_voucher_view.dart';
import 'splash/views/splash_view.dart';

class AppRoutes {
  static const String paymentVoucherView = '/paymentVoucherView';
  static const String splashView = '/splashView';
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case paymentVoucherView:
        return MaterialPageRoute(builder: (_) => const PaymentVoucherView());
      case splashView:
        return MaterialPageRoute(builder: (_) => const SplashView());
      default:
        return MaterialPageRoute(builder: (_) =>  Container());
    }
  }
}