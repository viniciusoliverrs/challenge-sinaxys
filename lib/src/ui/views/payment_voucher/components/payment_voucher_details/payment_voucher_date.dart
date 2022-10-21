import 'package:challenge_sinaxys/src/ui/common_widgets/common_text.dart';
import 'package:challenge_sinaxys/src/utils/responsive.dart';
import 'package:challenge_sinaxys/src/ui/theme/app_fonts.dart';
import 'package:flutter/material.dart';

import '../../../../theme/app_colors.dart';

class PaymentVoucherDate extends StatelessWidget {
  const PaymentVoucherDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CommonText(
          label: "Data",
          fontSize: Responsive(context).fontSizeMobile(AppFonts.normalSize),
          color: AppColors.greyDark,
        ),
        CommonText(
          label: "10/10/2020",
          fontSize: Responsive(context).fontSizeMobile(AppFonts.normalSize),
          color: AppColors.greyDark,
        ),
      ],
    );
  }
}
