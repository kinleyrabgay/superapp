import 'package:flutter/material.dart';
import 'package:superbt/core/utils/constants/colors.dart';

class SAShadowStyle {
  static final verticalItemShadow = BoxShadow(
    color: SAColors.darkGrayColor.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );

  static final horizontalItemShadow = BoxShadow(
    color: SAColors.darkGrayColor.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );
}
