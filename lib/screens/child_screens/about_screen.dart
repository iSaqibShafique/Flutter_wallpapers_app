import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 60.h),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Settings",
                style: GoogleFonts.redHatDisplay(
                  color: Colors.black,
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 100.h),
            InkWell(
              // onTap: () {
              //   canLaunchUrl(
              //     Uri.parse(
              //         "https://m.facebook.com/profile.php?id=100044098750121"),

              //   );
              // },
              onTap: () async {
                const url =
                    'https://m.facebook.com/profile.php?id=100044098750121';
                if (await canLaunchUrl(Uri.parse(url))) {
                  await launchUrl(Uri.parse(url),
                      mode: LaunchMode.externalApplication);
                } else {
                  print("Could'nt lauch $url");
                }
              },
              child: Row(
                children: [
                  Icon(CupertinoIcons.signature,
                      size: 18.w.h, color: Colors.black87),
                  SizedBox(width: 10.w),
                  Text(
                    "Follow us",
                    style: GoogleFonts.redHatDisplay(
                        color: Colors.black87,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            InkWell(
              onTap: () async {
                const url = 'https://wa.me/+923197542663';
                if (await canLaunchUrl(Uri.parse(url))) {
                  await launchUrl(Uri.parse(url),
                      mode: LaunchMode.externalApplication);
                } else {
                  print("Could'nt lauch $url");
                }
              },
              child: Row(
                children: [
                  Icon(CupertinoIcons.conversation_bubble,
                      size: 18.w.h, color: Colors.black87),
                  SizedBox(width: 10.w),
                  Text(
                    "Send feedback",
                    style: GoogleFonts.redHatDisplay(
                        color: Colors.black87,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
