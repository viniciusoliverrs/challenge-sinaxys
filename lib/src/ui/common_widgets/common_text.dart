// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:challenge_sinaxys/src/ui/theme/app_colors.dart';
import 'package:challenge_sinaxys/src/ui/theme/app_fonts.dart';
import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  final String label;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign textAlign;
  final EdgeInsetsGeometry padding;
  final String fontFamily;
  const CommonText({
    Key? key,
    required this.label,
    this.fontSize = AppFonts.mediumSize,
    this.fontWeight = FontWeight.w400,
    this.color = AppColors.purpleDark,
    this.textAlign = TextAlign.start,
    this.padding = const EdgeInsets.all(0),
    this.fontFamily = AppFonts.primaryFontFamily,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(
        label,
        textAlign: textAlign,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontFamily: fontFamily,
          fontWeight: fontWeight,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
