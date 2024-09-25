import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsItem extends StatelessWidget {
  const BookDetailsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        "https://th.bing.com/th/id/OIP.FweYc1n9zcA08ZY_gWor8AHaLH?rs=1&pid=ImgDetMain",
        height: 112.h,
        fit: BoxFit.cover,
        width: 70.w,
      ),
    );
  }
}
