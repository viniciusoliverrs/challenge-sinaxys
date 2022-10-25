import 'package:flutter/material.dart';

import '../../../../core/presenter/common_widgets/common_text.dart';
import '../../../../core/utils/responsive.dart';
import '../../../../core/presenter/theme/app_colors.dart';
import '../../../../core/presenter/theme/app_fonts.dart';

class PaymentVoucherCreditedBy extends StatelessWidget {
  const PaymentVoucherCreditedBy({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CommonText(
          label: "Creditado por",
          fontSize: Responsive(context).fontSizeMobile(AppFonts.normalSize),
          color: AppColors.greyDark,
          fontWeight: AppFonts.w400,
        ),
        CommonText(
          label: "AmorSaúde Alvorada",
          fontSize: Responsive(context).fontSizeMobile(AppFonts.normalSize),
          color: AppColors.greyDark,
          fontWeight: AppFonts.w700,
        ),
      ],
    );
  }
}
