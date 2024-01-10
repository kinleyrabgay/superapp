import 'package:flutter/material.dart';
import 'package:superbt/core/common/widget/sa_icon.dart';
import 'package:superbt/src/chat/presentation/view/chat.dart';
import 'package:superbt/src/explore/presentation/view/explore.dart';
import 'package:superbt/src/favourite/presentation/view/favourite.dart';
import 'package:superbt/src/profile/presentation/view/profile.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  List<Widget> pages = [
    const ExploreView(),
    const FavouriteView(),
    const ChatView(),
    const ProfileView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        selectedItemColor: const Color(0xfffe416c),
        selectedLabelStyle: const TextStyle(fontSize: 13),
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SAIcon(
              assetname: "home.png",
              index: 0,
              currentIndex: currentIndex,
              isSelected: 0 == currentIndex,
            ),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: SAIcon(
              assetname: "categories.png",
              index: 1,
              currentIndex: currentIndex,
              isSelected: 1 == currentIndex,
            ),
            label: "Auction",
          ),
          BottomNavigationBarItem(
            icon: SAIcon(
              assetname: "chat.png",
              index: 2,
              currentIndex: currentIndex,
              isSelected: 2 == currentIndex,
            ),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: SAIcon(
              assetname: "profile.png",
              index: 3,
              currentIndex: currentIndex,
              isSelected: 3 == currentIndex,
            ),
            label: "Profile",
          ),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}
