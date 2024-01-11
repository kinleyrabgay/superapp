import 'package:flutter/material.dart';
import 'package:superbt/core/common/widget/sa_textbutton.dart';
import 'package:superbt/core/utils/constants.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var item in footerItem)
          SATextButton(
            title: item.title,
            routeName: item.routeName,
          )
      ],
    );
  }
}
