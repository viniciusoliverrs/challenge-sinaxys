// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class CommonDivider extends StatelessWidget {
  final double thickness;
  final Color color;
  final double height;
  const CommonDivider({
    Key? key,
    this.thickness = 1,
    this.height = 10,
    this.color = AppColors.greyLight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color,
      thickness: thickness,
      height: height,
    );
  }
}
