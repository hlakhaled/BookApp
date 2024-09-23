import 'package:books_app/constatnts.dart';
import 'package:books_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          AssetsData.logo,
          width: 75.w,
          height: 20.h,
        ),
        Padding(
          padding: EdgeInsets.only(right: 30.w),
          child: IconButton(
              onPressed: () {},
              icon: const Icon(FontAwesomeIcons.magnifyingGlass,
                  size: 25, color: whiteColor)),
        )
      ],
    );
  }
}
