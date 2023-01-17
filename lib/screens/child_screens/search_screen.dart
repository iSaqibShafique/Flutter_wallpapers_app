import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:wall_lab/Utils/colors.dart';
import 'package:wall_lab/Utils/filepath.dart';
import 'package:wall_lab/controller/search_controller.dart';
import 'package:wall_lab/screens/child_screens/set_wallpaper_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    Get.put(SearchScreenController());
    return Scaffold(
      body: GetBuilder<SearchScreenController>(
        builder: (controller) => SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200.h,
                width: ScreenUtil().screenWidth,
                decoration: BoxDecoration(
                  color: background_color,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    children: [
                      SizedBox(height: 50.h),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Search",
                          style: GoogleFonts.redHatDisplay(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(height: 60.h),
                      TextFormField(
                        enableInteractiveSelection: false,
                        controller: searchController,
                        focusNode: FocusNode(),
                        onFieldSubmitted: (value) {
                          controller.flower(value.trimLeft().toString());
                          print(value.trimLeft().toString());
                        },
                        cursorColor: Colors.white,
                        cursorHeight: 24.h,
                        style: GoogleFonts.redHatDisplay(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                        ),
                        decoration: InputDecoration(
                          isDense: true,
                          suffixIcon: Icon(
                            CupertinoIcons.search,
                            size: 20.w.h,
                            color: Colors.white,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.r),
                            borderSide:
                                BorderSide(color: Colors.white, width: 1.5.h),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.r),
                            borderSide:
                                BorderSide(color: Colors.white, width: 1.5.h),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.r),
                            borderSide:
                                BorderSide(color: Colors.white, width: 1.5.h),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.r),
                            borderSide:
                                BorderSide(color: Colors.white, width: 1.5.h),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.r),
                            borderSide:
                                BorderSide(color: Colors.white, width: 1.5.h),
                          ),
                        ),
                      ),
                      SizedBox(width: 8.w)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              SizedBox(
                height: ScreenUtil().screenHeight - 288.h,
                width: ScreenUtil().screenWidth,
                child: controller.searchLoaded.value
                    ? Center(
                        child: SizedBox(
                          height: 100.h,
                          width: 100.w,
                          child: LottieBuilder.asset(
                            search_animation,
                            repeat: false,
                          ),
                        ),
                      )
                    : GridView.builder(
                        itemCount: 20,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisExtent: 400.h,
                            crossAxisSpacing: 4.w,
                            mainAxisSpacing: 4.h),
                        itemBuilder: ((context, index) => InkWell(
                              onTap: () => Get.to(SetWallpaperScreen(
                                  link: controller.searchedList[index]["src"]
                                      ["portrait"])),
                              child: CachedNetworkImage(
                                placeholder: (context, url) => Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xff182757),
                                    borderRadius: BorderRadius.circular(12.r),
                                  ),
                                  child: Center(
                                    child: SizedBox(
                                      height: 50.h,
                                      width: 50.w,
                                      child: Image.asset(placeholder),
                                    ),
                                  ),
                                ),
                                imageUrl: controller.searchedList[index]["src"]
                                    ["portrait"],
                                imageBuilder: (context, imageProvider) =>
                                    Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.r),
                                      image: DecorationImage(
                                          image: imageProvider,
                                          fit: BoxFit.fill)),
                                ),
                              ),
                            )),
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
