// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import '../../../core/presenter/theme/app_colors.dart';
import '../../../core/presenter/theme/app_fonts.dart';
import '../../../core/utils/responsive.dart';

class PaymentVoucherTitle extends StatelessWidget {
  final String title;
  const PaymentVoucherTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: AppColors.purpleDark,
        fontSize: Responsive(context).fontSizeMobile(AppFonts.bigLargeSize),
        fontFamily: AppFonts.primaryFontFamily,
        fontWeight: AppFonts.w700,
      ),
    );
  }
}
