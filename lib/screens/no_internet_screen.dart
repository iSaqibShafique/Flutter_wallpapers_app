import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:wall_lab/Utils/colors.dart';
import 'package:wall_lab/Utils/filepath.dart';

class NoInternetScreen extends StatelessWidget {
  const NoInternetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background_color,
      body: Center(
        child: SizedBox(
          height: 200.h,
          width: 200.w,
          child: Column(
            children: [
              SizedBox(
                height: 150.h,
                width: 150.w,
                child: LottieBuilder.asset(
                  no_internet_animation,
                  repeat: false,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                "Hmm..You're not connected\nto internet.",
                textAlign: TextAlign.center,
                style: GoogleFonts.redHatDisplay(
                  color: Colors.white70,
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
