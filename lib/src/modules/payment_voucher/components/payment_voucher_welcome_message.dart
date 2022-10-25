
import 'package:flutter/material.dart';

import '../../../core/presenter/theme/app_colors.dart';
import '../../../core/presenter/theme/app_fonts.dart';

class PaymentVoucherWelcomeMessage extends StatelessWidget {
  final String userName;
  const PaymentVoucherWelcomeMessage({
    Key? key,
    required this.userName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            text: 'Olá, ',
            style: const TextStyle(
              fontSize: 18,
              color: AppColors.purpleDark,
              fontWeight: AppFonts.w400,
              fontFamily: AppFonts.primaryFontFamily,
            ),
            children: [
              TextSpan(
                text: userName,
                style: const TextStyle(
                  fontSize: 20,
                  color: AppColors.purpleDark,
                  fontWeight: AppFonts.w700,
                  fontFamily: AppFonts.primaryFontFamily,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
