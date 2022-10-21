// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:challenge_sinaxys/src/ui/theme/app_colors.dart';
import 'package:challenge_sinaxys/src/ui/theme/app_fonts.dart';
import 'package:flutter/material.dart';

class CommmonButton extends StatelessWidget {
  final Function()? onPressed;
  final Color bgColor;
  final Color labelColor;
  final double radius;
  final double fontSize;
  final String label;
  final EdgeInsetsGeometry padding;
  final TextAlign textAlign;
  final String fontFamily;
  final bool isLoading;
  const CommmonButton({
    Key? key,
    this.onPressed,
    this.bgColor = AppColors.primary,
    this.labelColor = AppColors.light,
    this.radius = 40,
    this.fontSize = AppFonts.normalSize,
    required this.label,
    this.textAlign = TextAlign.center,
    this.fontFamily = AppFonts.primaryFontFamily,
    this.isLoading = false,
    this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(radius),
      child: InkWell(
        borderRadius: BorderRadius.circular(radius),
        onTap: onPressed,
        child: Ink(
          padding: padding,
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(radius),
          ),
          child: isLoading
              ? Center(
                child: SizedBox(
                  height: fontSize,
                  width: fontSize,
                  child: const CircularProgressIndicator(
                    strokeWidth: 5,
                    valueColor: AlwaysStoppedAnimation<Color>(AppColors.light),
  
                  )),
              )
              : Text(
                  label,
                  textAlign: textAlign,
                  style: TextStyle(
                    color: labelColor,
                    fontSize: fontSize,
                    fontWeight: FontWeight.w500,
                    fontFamily: fontFamily,
                  ),
                ),
        ),
      ),
    );
  }
}
