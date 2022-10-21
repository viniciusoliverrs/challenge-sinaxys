// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_fonts.dart';
import 'common_text.dart';

class CommonButtonLink extends StatelessWidget {
  final String label;
  final Function()? onPressed;
  final Color fontColor;
  final double fontSize;
  final FontWeight fontWeight;
  CommonButtonLink({
    Key? key,
    required this.label,
    this.onPressed,
    this.fontColor = AppColors.primary,
    this.fontSize = AppFonts.normalSize,
    this.fontWeight = FontWeight.w400,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: CommonText(
        label: label,
        color: fontColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
