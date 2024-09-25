import 'package:books_app/features/home/presentation/views/book_details_view.dart';
import 'package:books_app/features/home/presentation/views/home_view.dart';
import 'package:books_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const homeView = "/homeview";
  static const bookDetailsView = "/BookDetailsView";
  static final route = GoRouter(
    routes: [
      GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) {
            return const SplashView();
          }),
      GoRoute(
          path: homeView,
          builder: (BuildContext context, GoRouterState state) {
            return const HomeView();
          }),
      GoRoute(
        path: bookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      )
    ],
  );
}
