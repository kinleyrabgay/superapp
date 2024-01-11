import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:superbt/core/common/widget/sa_icon.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    super.key,
    required this.title,
    this.subtitile,
    required this.assetName,
    required this.isLast,
  });

  final String title;
  final String? subtitile;
  final String assetName;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          color: Colors.white,
          child: InkWell(
            onTap: () {
              // print('object $title');
            },
            child: ListTile(
              leading: SAIcon(
                assetname: assetName,
              ),
              title: Text(
                title,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              subtitle: subtitile != null
                  ? Text(
                      subtitile!,
                      style: Theme.of(context).textTheme.bodySmall,
                    )
                  : const SizedBox.shrink(),
              trailing: const Icon(
                CupertinoIcons.chevron_forward,
                size: 16,
                color: Colors.grey,
              ),
            ),
          ),
        ),
        if (!isLast)
          Divider(
            height: 1,
            thickness: 0.7,
            color: Colors.grey[200],
          ),
      ],
    );
  }
}
