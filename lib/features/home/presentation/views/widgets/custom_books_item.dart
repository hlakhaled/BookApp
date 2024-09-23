import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBooksItems extends StatelessWidget {
  const CustomBooksItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.r),
      child: Image.network(
          "https://th.bing.com/th/id/OIP.FweYc1n9zcA08ZY_gWor8AHaLH?rs=1&pid=ImgDetMain",
          height: 224.h,
          width: 150.w,
          fit: BoxFit.cover),
    );
  }
}
