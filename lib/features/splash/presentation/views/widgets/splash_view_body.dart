import 'package:books_app/core/utils/assets_data.dart';
import 'package:books_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(
          AssetsData.logo,
          width: 260.w,
        ),
        SizedBox(
          height: 14.h,
        ),
        const Text(
          "Read Free Books",
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
