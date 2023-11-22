import 'package:appnation_case/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class SettingsMenuModel {
  final String title;
  final SvgGenImage icon;
  final Widget trailing;
  SettingsMenuModel({
    required this.title,
    required this.icon,
    required this.trailing,
  });
}
