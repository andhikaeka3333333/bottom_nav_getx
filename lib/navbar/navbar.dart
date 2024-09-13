import 'package:bottom_nav_practice_1/controller/controller.dart';
import 'package:bottom_nav_practice_1/pages/chart.dart';
import 'package:bottom_nav_practice_1/pages/home.dart';
import 'package:bottom_nav_practice_1/pages/note.dart';
import 'package:bottom_nav_practice_1/pages/setting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavBAr extends StatefulWidget {
  const NavBAr({super.key});

  @override
  State<NavBAr> createState() => _NavBArState();
}

class _NavBArState extends State<NavBAr> {
  final controller = Get.put(NavBarController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavBarController>(builder: (context) {
      return Scaffold(
        body: IndexedStack(
          index: controller.tabIndex,
          children: const [
            Home(),
            Note(),
            Chart(),
            Setting(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.grey.shade400,
          currentIndex: controller.tabIndex,
          onTap: controller.changeTabIndex,
          items: [
            _bottombarItem(Icons.home_rounded, "Home"),
            _bottombarItem(Icons.sticky_note_2_rounded, "Note"),
            _bottombarItem(Icons.bar_chart, "Chart"),
            _bottombarItem(Icons.settings_rounded, "Settings"),
          ],
        ),
      );
    });
  }
}

_bottombarItem(IconData icon, String label) {
  return BottomNavigationBarItem(icon: Icon(icon), label: label);
}
