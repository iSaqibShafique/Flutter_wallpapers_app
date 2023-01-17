import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wall_lab/Utils/filepath.dart';
import 'package:wall_lab/screens/child_screens/set_wallpaper_screen.dart';

class SeeAllScreen extends StatelessWidget {
  final String titleText;
  final List list;
  const SeeAllScreen({super.key, required this.titleText, required this.list});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          systemOverlayStyle:
              const SystemUiOverlayStyle(statusBarColor: Colors.white),
          leading: InkWell(
            onTap: () => Get.back(),
            child: Icon(
              CupertinoIcons.back,
              size: 20.w.h,
              color: Colors.black,
            ),
          ),
          title: Center(
            child: Text(
              titleText,
              style: GoogleFonts.redHatDisplay(
                  color: Colors.black,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: SizedBox(
            height: ScreenUtil().screenHeight,
            width: ScreenUtil().screenWidth,
            child: GridView.builder(
                itemCount: 20,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 400.h,
                    crossAxisSpacing: 4.w,
                    mainAxisSpacing: 4.h),
                itemBuilder: ((context, index) => InkWell(
                      onTap: () => Get.to(SetWallpaperScreen(
                          link: list[index]["src"]["portrait"])),
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
                        imageUrl: list[index]["src"]["portrait"],
                        imageBuilder: (context, imageProvider) => Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                              image: DecorationImage(
                                  image: imageProvider, fit: BoxFit.cover)),
                        ),
                      ),
                    )))));
  }
}
