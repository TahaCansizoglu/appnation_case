import 'package:appnation_case/features/splash/presentation/page/splash_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../features/bottom_navigation/presentation/pages/bottom_navigator.dart';
import '../features/home/presentation/pages/home_page.dart';
import '../features/settings/presentation/pages/settings_page.dart';
import '../features/splash/domain/models/dog_model.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: "Page|Screen|View|Widget,Route")
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: BottomNavigatorRoute.page, children: [
      AutoRoute(page: HomeRoute.page),
      AutoRoute(page: SettingsRoute.page),
    ]),
  ];
}
