import 'package:challenge_sinaxys/src/ui/theme/app_colors.dart';
import 'package:challenge_sinaxys/src/ui/theme/app_fonts.dart';
import 'package:flutter/material.dart';

import '../../../../utils/responsive.dart';

class PaymentVoucherTitle extends StatelessWidget {
  const PaymentVoucherTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Comprovante de Crédito efetuado",
      style: TextStyle(
        color: AppColors.purpleDark,
        fontSize: Responsive(context).fontSizeMobile(AppFonts.bigLargeSize),
        fontFamily: AppFonts.primaryFontFamily,
        fontWeight: AppFonts.w700,
      ),
    );
  }
}
