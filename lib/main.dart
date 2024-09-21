import 'package:books_app/constatnts.dart';
import 'package:books_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      minTextAdapt: true,
      designSize: const Size(375, 812),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimarycolor),
        home: const SplashView(),
      ),
    );
  }
}
