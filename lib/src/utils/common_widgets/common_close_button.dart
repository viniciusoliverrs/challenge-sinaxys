// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:challenge_sinaxys/src/utils/theme/app_colors.dart';
import 'package:challenge_sinaxys/src/utils/theme/app_icons.dart';
import 'package:flutter/material.dart';

class CommonCloseButton extends StatelessWidget {
  final Function()? onPressed;
  final Color bgColor;
  final Color iconColor;
  final double radius;
  final double iconSize;
  const CommonCloseButton({
    Key? key,
    this.onPressed,
    this.bgColor = AppColors.greyLight,
    this.iconColor = AppColors.primary,
    this.radius = 100,
    this.iconSize = 26,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(radius),
      child: InkWell(
        borderRadius: BorderRadius.circular(radius),
        onTap: onPressed,
        child: Ink(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(radius),
          ),
          child: Icon(
            AppIcons.close,
            color: iconColor,
            size: iconSize,
          ),
        ),
      ),
    );
  }
}
