import 'package:challenge_sinaxys/src/core/presenter/theme/app_fonts.dart';
import 'package:flutter/material.dart';

class Responsive {
  final BuildContext context;

  Responsive(this.context);

  double get width => MediaQuery.of(context).size.width;
  double get height => MediaQuery.of(context).size.height;

  double get widthPercent => width / 100;
  double get heightPercent => height / 100;

  bool get isMobile => width < 600;
  bool get isTablet => width >= 600 && width < 900;
  bool get isDesktop => width >= 900;

  double get widthPercentMobile => isMobile ? widthPercent : 0;
  double get widthPercentTablet => isTablet ? widthPercent : 0;
  double get widthPercentDesktop => isDesktop ? widthPercent : 0;

  double fontSizeMobile(double size) {
    if (width < 340) {
      return size * 0.75;
    } 
    return size;
  }
}