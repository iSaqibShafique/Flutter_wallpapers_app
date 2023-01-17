import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_wallpaper_manager/flutter_wallpaper_manager.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wall_lab/Utils/filepath.dart';

class SetWallpaperScreen extends StatelessWidget {
  final String link;
  const SetWallpaperScreen({super.key, required this.link});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CachedNetworkImage(
        placeholder: (context, url) => Container(
          height: ScreenUtil().screenHeight,
          width: ScreenUtil().screenWidth,
          color: const Color(0xff182757),
          child: SizedBox(
              height: 100.h, width: 100.w, child: Image.asset(placeholder)),
        ),
        imageUrl: link,
        imageBuilder: (context, imageProvider) => Container(
          height: ScreenUtil().screenHeight,
          width: ScreenUtil().screenWidth,
          decoration: BoxDecoration(
              image: DecorationImage(image: imageProvider, fit: BoxFit.fill)),
          child: Column(
            children: [
              SizedBox(height: 40.h),
              SizedBox(height: 650.h),
              Padding(
                padding: EdgeInsets.only(bottom: 40.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () async {
                        int location = WallpaperManager.HOME_SCREEN;

                        var file =
                            await DefaultCacheManager().getSingleFile(link);
                        bool result =
                            await WallpaperManager.setWallpaperFromFile(
                                file.path, location);
                        if (result) {
                          Get.snackbar(
                            "Walls Lab",
                            "Wallpaper set successfully.",
                            snackStyle: SnackStyle.FLOATING,
                            backgroundColor: Colors.white,
                          );
                        }
                      },
                      child: Container(
                        height: 60.h,
                        width: 300.w,
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(8.r)),
                        child: Center(
                          child: Text(
                            "Set as wallpaper.",
                            style: GoogleFonts.redHatDisplay(
                                color: Colors.white,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
