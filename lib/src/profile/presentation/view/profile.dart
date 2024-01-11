import 'package:flutter/material.dart';
import 'package:superbt/core/res/colours.dart';
import 'package:superbt/src/profile/presentation/view/profile_without_login.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColours.scaffoldBGColor,
      appBar: AppBar(
        backgroundColor: AppColours.whiteColor,
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: const ProfileWithoutLogin(),
    );
  }
}
