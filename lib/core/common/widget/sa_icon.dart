import 'package:flutter/material.dart';

class SAIcon extends StatelessWidget {
  const SAIcon({
    Key? key,
    required this.assetname,
    this.index,
    this.currentIndex,
    this.isSelected = false,
  }) : super(key: key);

  final String assetname;
  final int? index;
  final int? currentIndex;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/$assetname",
      height: 25,
      width: 25,
      // color: index == currentIndex ? const Color(0xfffe416c) : Colors.black,
      color:
          isSelected ? const Color(0xfffe416c) : Colors.black.withOpacity(0.4),
    );
  }
}
