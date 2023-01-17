import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wall_lab/Utils/colors.dart';
import 'package:wall_lab/Utils/filepath.dart';
import 'package:wall_lab/controller/check_internet_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(InternetCheckController());
    return Scaffold(
      backgroundColor: background_color,
      body: Column(
        children: [
          SizedBox(height: 350.h),
          Center(
            child: SizedBox(
              height: 70.h,
              width: 70.w,
              child: SvgPicture.asset(logo_path),
            ),
          ),
          SizedBox(height: 350.h),
          Center(
            child: Text(
              "WallsLab",
              style: GoogleFonts.redHatDisplay(
                  color: Colors.white24,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700),
            ),
          )
        ],
      ),
    );
  }
}
