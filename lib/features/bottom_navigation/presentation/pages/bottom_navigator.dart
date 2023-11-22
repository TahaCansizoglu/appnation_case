import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../routers/router.dart';

@RoutePage()
class BottomNavigatorPage extends StatelessWidget {
  const BottomNavigatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(
      routes: [
        HomeRoute(dogList: null),
        SettingsRoute(),
      ],
      builder: (context, child, animation) {
        final tabsRouter = context.tabsRouter;
        return Scaffold(
            body: child,
            bottomNavigationBar: BottomAppBar(
              child: BottomNavigationBar(
                currentIndex: tabsRouter.activeIndex,
                onTap: tabsRouter.setActiveIndex,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: "Home",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: "Settings",
                  ),
                ],
              ),
            ));
      },
    );
  }
}
