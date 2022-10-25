import 'package:flutter/material.dart';

import '../../../../core/presenter/common_widgets/common_text.dart';
import '../../../../core/utils/responsive.dart';
import '../../../../core/presenter/theme/app_colors.dart';
import '../../../../core/presenter/theme/app_fonts.dart';

class PaymentVoucherValue extends StatelessWidget {
  const PaymentVoucherValue({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:  [
        CommonText(
          label: "Valor total",
          color: AppColors.purpleDark,
          fontSize: Responsive(context).fontSizeMobile(AppFonts.normalSize),
          fontWeight: AppFonts.w700,
        ),
        Text.rich(
          TextSpan(
            text: "R\$",
            style: TextStyle(
              color: AppColors.purpleDark,
              fontSize: Responsive(context).fontSizeMobile(AppFonts.normalSize),
              fontWeight: FontWeight.w700,
            ),
            children: [
              TextSpan(
                text: " 100,00",
                style: TextStyle(
                  fontSize: Responsive(context).fontSizeMobile(AppFonts.mediumSize),
                  fontWeight: AppFonts.w700,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
