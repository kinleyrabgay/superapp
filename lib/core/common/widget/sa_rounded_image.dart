import 'package:flutter/material.dart';

class SARoundedImage extends StatelessWidget {
  const SARoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imgUrl,
    required this.applyImageRadius,
    this.border,
    required this.backgroundColor,
    this.fit,
    this.padding,
    required this.isNetworkImage,
    this.onPressed,
    required this.boderRadius,
  });

  final double? width, height;
  final String imgUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double boderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(boderRadius),
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(boderRadius)
              : BorderRadius.zero,
          child: Image(
            fit: fit,
            image: isNetworkImage
                ? NetworkImage(imgUrl)
                : AssetImage(imgUrl) as ImageProvider,
          ),
        ),
      ),
    );
  }
}
