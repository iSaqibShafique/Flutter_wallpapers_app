import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wall_lab/Utils/widgets/heading.dart';
import 'package:wall_lab/Utils/widgets/subheading.dart';
import 'package:wall_lab/controller/home_screen_controller.dart';
import 'package:wall_lab/screens/child_screens/see_all_screen.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenController());
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50.h),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Discover",
                  style: GoogleFonts.redHatDisplay(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 30.sp),
                ),
              ),
              SizedBox(height: 40.h),
              GetBuilder<HomeScreenController>(
                builder: (controller) => HeadingWidget(
                  leftsideicon: CupertinoIcons.star_fill,
                  headingText: "For You",
                  onClickText: "See all",
                  textFuction: () => Get.to(SeeAllScreen(
                      titleText: "For You", list: controller.foryou)),
                  leftsideText: "Collections",
                  list: controller.foryou,
                ),
              ),
              SizedBox(height: 20.h),
              GetBuilder<HomeScreenController>(
                builder: (controller) => SubHeading(
                  subtilelefticon: CupertinoIcons.collections_solid,
                  subtileleftText: "Category",
                  headingText: "Depth Effect",
                  onTapText: "See all",
                  textFunction: () => Get.to(SeeAllScreen(
                      titleText: "Depth Effect", list: controller.deptheffect)),
                  list: controller.deptheffect,
                ),
              ),
              SizedBox(height: 20.h),
              GetBuilder<HomeScreenController>(
                builder: (controller) => SubHeading(
                  subtilelefticon: CupertinoIcons.collections_solid,
                  subtileleftText: "Category",
                  headingText: "Water",
                  onTapText: "See all",
                  textFunction: () => Get.to(SeeAllScreen(
                      titleText: "Water", list: controller.waterfall)),
                  list: controller.waterfall,
                ),
              ),
              SizedBox(height: 20.h),
              GetBuilder<HomeScreenController>(
                builder: (controller) => SubHeading(
                  subtilelefticon: CupertinoIcons.collections_solid,
                  subtileleftText: "Category",
                  headingText: "Calm",
                  onTapText: "See all",
                  textFunction: () => Get.to(
                      SeeAllScreen(titleText: "Calm", list: controller.calm)),
                  list: controller.calm,
                ),
              ),
              SizedBox(height: 20.h),
              GetBuilder<HomeScreenController>(
                builder: (controller) => SubHeading(
                  subtilelefticon: CupertinoIcons.collections_solid,
                  subtileleftText: "Category",
                  headingText: "Games",
                  onTapText: "See all",
                  textFunction: () => Get.to(
                      SeeAllScreen(titleText: "Games", list: controller.games)),
                  list: controller.games,
                ),
              ),
              SizedBox(height: 20.h),
              GetBuilder<HomeScreenController>(
                builder: (controller) => SubHeading(
                  subtilelefticon: CupertinoIcons.collections_solid,
                  subtileleftText: "Category",
                  headingText: "Neon",
                  onTapText: "See all",
                  textFunction: () => Get.to(
                      SeeAllScreen(titleText: "Neon", list: controller.neon)),
                  list: controller.neon,
                ),
              ),
              SizedBox(height: 20.h),
              GetBuilder<HomeScreenController>(
                builder: (controller) => SubHeading(
                  subtilelefticon: CupertinoIcons.collections_solid,
                  subtileleftText: "Category",
                  headingText: "Universe",
                  onTapText: "See all",
                  textFunction: () => Get.to(SeeAllScreen(
                      titleText: "Universe", list: controller.universe)),
                  list: controller.universe,
                ),
              ),
              SizedBox(height: 20.h),
              GetBuilder<HomeScreenController>(
                builder: (controller) => SubHeading(
                  subtilelefticon: CupertinoIcons.collections_solid,
                  subtileleftText: "Category",
                  headingText: "Snow",
                  onTapText: "See all",
                  textFunction: () => Get.to(
                      SeeAllScreen(titleText: "Snow", list: controller.snow)),
                  list: controller.snow,
                ),
              ),
              SizedBox(height: 20.h),
              GetBuilder<HomeScreenController>(
                builder: (controller) => HeadingWidget(
                  leftsideicon: CupertinoIcons.star_fill,
                  headingText: "Colors",
                  onClickText: "See all",
                  textFuction: () => Get.to(SeeAllScreen(
                      titleText: "Colors", list: controller.color)),
                  leftsideText: "Collections",
                  list: controller.color,
                ),
              ),
              SizedBox(height: 20.h),
              GetBuilder<HomeScreenController>(
                builder: (controller) => HeadingWidget(
                  leftsideicon: CupertinoIcons.star_fill,
                  headingText: "Top 100",
                  onClickText: "See all",
                  textFuction: () => Get.to(SeeAllScreen(
                      titleText: "Top 100", list: controller.top100)),
                  leftsideText: "Collections",
                  list: controller.top100,
                ),
              ),
              SizedBox(height: 20.h),
              GetBuilder<HomeScreenController>(
                builder: (controller) => SubHeading(
                  subtilelefticon: CupertinoIcons.collections_solid,
                  subtileleftText: "Category",
                  headingText: "Movement",
                  onTapText: "See all",
                  textFunction: () => Get.to(SeeAllScreen(
                      titleText: "Movement", list: controller.movement)),
                  list: controller.movement,
                ),
              ),
              SizedBox(height: 20.h),
              GetBuilder<HomeScreenController>(
                builder: (controller) => SubHeading(
                  subtilelefticon: CupertinoIcons.collections_solid,
                  subtileleftText: "Category",
                  headingText: "Flowers",
                  onTapText: "See all",
                  textFunction: () => Get.to(SeeAllScreen(
                      titleText: "Flowers", list: controller.flowers)),
                  list: controller.flowers,
                ),
              ),
              SizedBox(height: 20.h),
              GetBuilder<HomeScreenController>(
                builder: (controller) => SubHeading(
                  subtilelefticon: CupertinoIcons.collections_solid,
                  subtileleftText: "Category",
                  headingText: "Art",
                  onTapText: "See all",
                  textFunction: () => Get.to(
                      SeeAllScreen(titleText: "Art", list: controller.art)),
                  list: controller.art,
                ),
              ),
              SizedBox(height: 20.h),
              GetBuilder<HomeScreenController>(
                builder: (controller) => SubHeading(
                  subtilelefticon: CupertinoIcons.collections_solid,
                  subtileleftText: "Category",
                  headingText: "Earth",
                  onTapText: "See all",
                  textFunction: () => Get.to(SeeAllScreen(
                      titleText: "Earth", list: controller.earths)),
                  list: controller.earths,
                ),
              ),
              SizedBox(height: 20.h),
              GetBuilder<HomeScreenController>(
                builder: (controller) => SubHeading(
                  subtilelefticon: CupertinoIcons.collections_solid,
                  subtileleftText: "Category",
                  headingText: "Skyscrappers",
                  onTapText: "See all",
                  textFunction: () => Get.to(SeeAllScreen(
                      titleText: "Skyscrappers",
                      list: controller.skyscrappers)),
                  list: controller.skyscrappers,
                ),
              ),
              SizedBox(height: 20.h),
              GetBuilder<HomeScreenController>(
                builder: (controller) => SubHeading(
                  subtilelefticon: CupertinoIcons.collections_solid,
                  subtileleftText: "Category",
                  headingText: "Cars",
                  onTapText: "See all",
                  textFunction: () => Get.to(
                      SeeAllScreen(titleText: "Cars", list: controller.cars)),
                  list: controller.cars,
                ),
              ),
              SizedBox(height: 20.h),
              GetBuilder<HomeScreenController>(
                builder: (controller) => SubHeading(
                  subtilelefticon: CupertinoIcons.collections_solid,
                  subtileleftText: "Category",
                  headingText: "Sports",
                  onTapText: "See all",
                  textFunction: () => Get.to(
                      SeeAllScreen(titleText: "Sport", list: controller.sport)),
                  list: controller.sport,
                ),
              ),
              SizedBox(height: 20.h),
              GetBuilder<HomeScreenController>(
                builder: (controller) => SubHeading(
                  subtilelefticon: CupertinoIcons.collections_solid,
                  subtileleftText: "Category",
                  headingText: "Light Emitting",
                  onTapText: "See all",
                  textFunction: () => Get.to(SeeAllScreen(
                      titleText: "LightEmitting",
                      list: controller.lightemitting)),
                  list: controller.lightemitting,
                ),
              ),
              SizedBox(height: 20.h),
              GetBuilder<HomeScreenController>(
                builder: (controller) => SubHeading(
                  subtilelefticon: CupertinoIcons.collections_solid,
                  subtileleftText: "Category",
                  headingText: "Abstract",
                  onTapText: "See all",
                  textFunction: () => Get.to(SeeAllScreen(
                      titleText: "Abstract", list: controller.abstracts)),
                  list: controller.abstracts,
                ),
              ),
              SizedBox(height: 20.h),
              GetBuilder<HomeScreenController>(
                builder: (controller) => SubHeading(
                  subtilelefticon: CupertinoIcons.collections_solid,
                  subtileleftText: "Category",
                  headingText: "Tasty",
                  onTapText: "See all",
                  textFunction: () => Get.to(SeeAllScreen(
                      titleText: "Tasty", list: controller.tastys)),
                  list: controller.tastys,
                ),
              ),
              SizedBox(height: 20.h),
              GetBuilder<HomeScreenController>(
                builder: (controller) => SubHeading(
                  subtilelefticon: CupertinoIcons.collections_solid,
                  subtileleftText: "Category",
                  headingText: "Liquids",
                  onTapText: "See all",
                  textFunction: () => Get.to(SeeAllScreen(
                      titleText: "Liquid", list: controller.liquid)),
                  list: controller.liquid,
                ),
              ),
              SizedBox(height: 20.h),
              GetBuilder<HomeScreenController>(
                builder: (controller) => SubHeading(
                  subtilelefticon: CupertinoIcons.collections_solid,
                  subtileleftText: "Category",
                  headingText: "Fun",
                  onTapText: "See all",
                  textFunction: () => Get.to(
                      SeeAllScreen(titleText: "Fun", list: controller.fun)),
                  list: controller.fun,
                ),
              ),
              SizedBox(height: 20.h),
              GetBuilder<HomeScreenController>(
                builder: (controller) => SubHeading(
                  subtilelefticon: CupertinoIcons.collections_solid,
                  subtileleftText: "Category",
                  headingText: "Rain",
                  onTapText: "See all",
                  textFunction: () => Get.to(
                      SeeAllScreen(titleText: "Rain", list: controller.rain)),
                  list: controller.rain,
                ),
              ),
              SizedBox(height: 20.h),
              GetBuilder<HomeScreenController>(
                builder: (controller) => SubHeading(
                  subtilelefticon: CupertinoIcons.collections_solid,
                  subtileleftText: "Category",
                  headingText: "Fume",
                  onTapText: "See all",
                  textFunction: () => Get.to(
                      SeeAllScreen(titleText: "Fumes", list: controller.fumes)),
                  list: controller.fumes,
                ),
              ),
              SizedBox(height: 20.h),
              GetBuilder<HomeScreenController>(
                builder: (controller) => SubHeading(
                  subtilelefticon: CupertinoIcons.collections_solid,
                  subtileleftText: "Category",
                  headingText: "Gradient",
                  onTapText: "See all",
                  textFunction: () => Get.to(SeeAllScreen(
                      titleText: "Gradients", list: controller.gradients)),
                  list: controller.gradients,
                ),
              ),
              SizedBox(height: 20.h),
              GetBuilder<HomeScreenController>(
                builder: (controller) => SubHeading(
                  subtilelefticon: CupertinoIcons.collections_solid,
                  subtileleftText: "Category",
                  headingText: "Learning",
                  onTapText: "See all",
                  textFunction: () => Get.to(SeeAllScreen(
                      titleText: "Learning", list: controller.learnings)),
                  list: controller.learnings,
                ),
              ),
              SizedBox(height: 40.h),
            ],
          ),
        ),
      ),
    );
  }
}
