import 'package:flutter/material.dart';
import 'package:superbt/core/utils/constants/colors.dart';
import 'package:superbt/core/utils/constants.dart';
import 'package:superbt/src/profile/presentation/widgets/footer.dart';
import 'package:superbt/src/profile/presentation/widgets/profile_item.dart';

class ProfileWithoutLogin extends StatelessWidget {
  const ProfileWithoutLogin({super.key});

  final double topContainerHeight = 150;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: topContainerHeight,
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: topContainerHeight * .50,
                    color: SAColors.dummyBGColor,
                  ),
                  Container(
                    height: topContainerHeight * .50,
                    color: SAColors.whiteColor,
                  ),
                ],
              ),
              Positioned(
                bottom: 20,
                left: 20,
                child: SizedBox(
                  height: 110,
                  width: 110,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Image.asset(
                        'assets/images/profile.png',
                        color: SAColors.textColor1,
                      ),
                    ),
                  ),
                ),
              ),
              // Positioned(
              //   bottom: 20,
              //   right: 20,
              //   child: SizedBox(
              //     width: MediaQuery.of(context).size.width * 0.5,
              //     child: ElevatedButton(
              //       style: ButtonStyle(
              //         elevation: MaterialStateProperty.all(0),
              //         backgroundColor: MaterialStateProperty.all(
              //           const Color(0xfffe416c),
              //         ),
              //         foregroundColor: MaterialStateProperty.all(Colors.white),
              //         textStyle: MaterialStateProperty.all(
              //           const TextStyle(
              //             fontSize: 12,
              //             fontWeight: FontWeight.w600,
              //           ),
              //         ),
              //         shape: MaterialStateProperty.all(
              //           RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(5),
              //           ),
              //         ),
              //       ),
              //       onPressed: () {},
              //       child: const Padding(
              //         padding: const EdgeInsets.symmetric(vertical: 10),
              //         child: const Text('LOG IN / SIGN IN'),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        Container(
          color: SAColors.whiteColor,
          child: Column(
            children: [
              for (var item in items)
                ProfileItem(
                  assetName: item.assetName,
                  title: item.title,
                  subtitile: item.subtitle,
                  isLast: item.isLast,
                ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        Container(
          color: SAColors.whiteColor,
          child: Column(
            children: [
              for (var item in backup)
                ProfileItem(
                  assetName: item.assetName,
                  title: item.title,
                  subtitile: item.subtitle,
                  isLast: item.isLast,
                ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        const Footer(),
        const SizedBox(height: 15),
        Text(
          'APP Version 0.0.1',
          style: Theme.of(context).textTheme.overline,
        )
      ],
    );
  }
}
