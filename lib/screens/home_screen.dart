import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wall_lab/Utils/colors.dart';
import 'package:wall_lab/controller/home_screen_controller.dart';
import 'package:wall_lab/screens/child_screens/about_screen.dart';
import 'package:wall_lab/screens/child_screens/discover_screen.dart';
import 'package:wall_lab/screens/child_screens/search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenController());
    return GetBuilder<HomeScreenController>(
      builder: (controller) => Scaffold(
        backgroundColor: Colors.white,
        body: screensList[controller.current_index.value],
        bottomNavigationBar: FlashyTabBar(
            selectedIndex: controller.current_index.value,
            backgroundColor: Colors.white,
            items: [
              FlashyTabBarItem(
                  icon: Icon(
                    CupertinoIcons.leaf_arrow_circlepath,
                    size: 20.w.h,
                    color: background_color,
                  ),
                  title: Text(
                    "Discover",
                    style: GoogleFonts.redHatDisplay(
                        color: background_color, fontWeight: FontWeight.w700),
                  )),
              FlashyTabBarItem(
                  icon: Icon(
                    CupertinoIcons.search,
                    size: 20.w.h,
                    color: background_color,
                  ),
                  title: Text(
                    "Search",
                    style: GoogleFonts.redHatDisplay(
                        color: background_color, fontWeight: FontWeight.w700),
                  )),
              FlashyTabBarItem(
                  icon: Icon(
                    CupertinoIcons.info_circle_fill,
                    size: 20.w.h,
                    color: background_color,
                  ),
                  title: Text(
                    "About us",
                    style: GoogleFonts.redHatDisplay(
                        color: background_color, fontWeight: FontWeight.w700),
                  ))
            ],
            onItemSelected: (value) {
              controller.updateIndex(value);
            }),
      ),
    );
  }
}

List<Widget> screensList = [
  const DiscoverScreen(),
  const SearchScreen(),
  const AboutScreen()
];
