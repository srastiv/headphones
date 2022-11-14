import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../data/models/category_model.dart';
import '../screens/home/homescreen.dart';
import '../screens/interest/interest.dart';
import '../screens/others/otherscreens.dart';
import '../screens/product_page/product_screen.dart';
import '../widgets/navigation_bar.dart';

class AppRoutes {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (BuildContext context, GoRouterState state) {
          return const CustomBottomNavigationBarWidget();
        },
      ),
      GoRoute(
        path: "/homescreen",
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
      ),
      GoRoute(
        path: "/products/:price",
        builder: (BuildContext context, GoRouterState state) {
          return ProductScreen(
            product: state.extra as CategoryModel
          );
        },
      ),
      GoRoute(
        path: "/category",
        builder: (BuildContext context, GoRouterState state) {
          return const Category();
        },
      ),
      GoRoute(
        path: "/interest",
        builder: (BuildContext context, GoRouterState state) {
          return const Interest();
        },
      ),
      GoRoute(
        path: "/profile",
        builder: (BuildContext context, GoRouterState state) {
          return const Profile();
        },
      ),
    ],
  );
}
