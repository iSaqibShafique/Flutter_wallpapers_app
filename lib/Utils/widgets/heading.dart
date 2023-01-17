import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wall_lab/Utils/filepath.dart';
import 'package:wall_lab/screens/child_screens/set_wallpaper_screen.dart';

class HeadingWidget extends StatelessWidget {
  final IconData leftsideicon;
  final String leftsideText;
  final String headingText;
  final String onClickText;
  final VoidCallback textFuction;
  final List list;
  const HeadingWidget(
      {super.key,
      required this.leftsideicon,
      required this.headingText,
      required this.onClickText,
      required this.textFuction,
      required this.leftsideText,
      required this.list});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(
              leftsideicon,
              color: Colors.grey,
              size: 16.w.h,
            ),
            SizedBox(width: 5.w),
            Text(
              leftsideText,
              style: GoogleFonts.redHatDisplay(
                  color: Colors.grey,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700),
            )
          ],
        ),
        SizedBox(height: 10.h),
        Padding(
          padding: EdgeInsets.only(right: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                headingText,
                style: GoogleFonts.redHatDisplay(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 22.sp),
              ),
              InkWell(
                onTap: textFuction,
                child: Text(
                  onClickText,
                  style: GoogleFonts.redHatDisplay(
                      color: Colors.blue,
                      fontWeight: FontWeight.w700,
                      fontSize: 18.sp),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 8.h),
        SizedBox(
          height: 300.h,
          width: ScreenUtil().screenWidth,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: list.length,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: InkWell(
                onTap: () => Get.to(
                    SetWallpaperScreen(link: list[index]["src"]["portrait"])),
                child: CachedNetworkImage(
                  placeholder: (context, url) => Container(
                    height: 300.h,
                    width: 290.w,
                    decoration: BoxDecoration(
                      color: const Color(0xff182757),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Center(
                      child: SizedBox(
                        height: 150.h,
                        width: 150.w,
                        child: Image.asset(placeholder),
                      ),
                    ),
                  ),
                  imageUrl: list[index]["src"]["medium"],
                  imageBuilder: (context, imageProvider) => Container(
                    height: 300.h,
                    width: 290.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        image: DecorationImage(
                            image: imageProvider, fit: BoxFit.cover)),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
