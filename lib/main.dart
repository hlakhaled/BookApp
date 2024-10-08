import 'package:books_app/constatnts.dart';
import 'package:books_app/core/utils/app_router.dart';
import 'package:books_app/core/utils/service_locater.dart';
import 'package:books_app/features/home/data/repo/home_repo_impl.dart';
import 'package:books_app/features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:books_app/features/home/presentation/manger/newest_seller_cubit/newest_seller_books_cubit.dart';
import 'package:books_app/features/home/presentation/manger/newest_seller_cubit/newest_seller_books_cubit.dart';
import 'package:books_app/features/home/presentation/manger/newest_seller_cubit/newest_seller_books_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  setDependencies();
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
      child: MultiBlocProvider(
        providers: [
          BlocProvider<FeaturedBooksCubit>(
              create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>())
                ..featuredBooks()),
          BlocProvider<NewestSellerBooksCubit>(
              create: (context) =>
                  NewestSellerBooksCubit(getIt.get<HomeRepoImpl>())
                    ..newestBloc())
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: kPrimarycolor,
              textTheme:
                  GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
          routerConfig: AppRouter.route,
          //  home: const SplashView(),
        ),
      ),
    );
  }
}
