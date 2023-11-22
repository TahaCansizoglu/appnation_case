import 'package:appnation_case/core/injections/locator.dart';
import 'package:appnation_case/features/settings/presentation/models/settings_menu_model.dart';
import 'package:appnation_case/services/device_info/device_info.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';

@RoutePage()
class SettingsPage extends StatelessWidget {
  SettingsPage({super.key});
  final List<SettingsMenuModel> menuItems = [
    SettingsMenuModel(title: 'Help', icon: Assets.icons.info, trailing: const Icon(Icons.arrow_outward_rounded)),
    SettingsMenuModel(title: 'Rate Us', icon: Assets.icons.star, trailing: const Icon(Icons.arrow_outward_rounded)),
    SettingsMenuModel(
        title: 'Share with Friends', icon: Assets.icons.export, trailing: const Icon(Icons.arrow_outward_rounded)),
    SettingsMenuModel(
        title: 'Terms and Conditions', icon: Assets.icons.scroll, trailing: const Icon(Icons.arrow_outward_rounded)),
    SettingsMenuModel(
        title: 'Privacy Policy', icon: Assets.icons.shieldCheck, trailing: const Icon(Icons.arrow_outward_rounded)),
    SettingsMenuModel(
        title: 'OS Version',
        icon: Assets.icons.gitBranch,
        trailing: Text(getIt<DeviceInfoService>().getDeviceOSAndVersion())),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: menuItems.elementAt(index).icon.svg(),
            title: Text(menuItems.elementAt(index).title),
            trailing: menuItems.elementAt(index).trailing,
            onTap: () {},
          );
        },
      ),
    );
  }
}
