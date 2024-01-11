import 'package:flutter/material.dart';
import 'package:superbt/core/utils/constants/colors.dart';

class SACircularIcon extends StatelessWidget {
  const SACircularIcon({
    super.key,
    this.witdh,
    this.height,
    this.size,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double? witdh, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: witdh,
      height: height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor ?? SAColors.whiteColor.withOpacity(0.9),
      ),
      child: IconButton(
        onPressed: onPressed,
        padding: EdgeInsets.zero,
        icon: Icon(
          icon,
          color: color,
          size: size,
        ),
      ),
    );
  }
}
