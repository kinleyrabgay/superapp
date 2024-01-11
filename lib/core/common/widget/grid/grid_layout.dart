import 'package:flutter/cupertino.dart';
import 'package:superbt/core/utils/constants/sizes.dart';

class SAGridLayout extends StatelessWidget {
  const SAGridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent,
    required this.itemBuilder,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: mainAxisExtent,
        mainAxisSpacing: SASizes.gridViewSpacing,
        crossAxisSpacing: SASizes.gridViewSpacing,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
