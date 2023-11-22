/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/GalanoGrotesqueBlack.otf
  String get galanoGrotesqueBlack => 'assets/fonts/GalanoGrotesqueBlack.otf';

  /// File path: assets/fonts/GalanoGrotesqueBold.otf
  String get galanoGrotesqueBold => 'assets/fonts/GalanoGrotesqueBold.otf';

  /// File path: assets/fonts/GalanoGrotesqueExtraBold.otf
  String get galanoGrotesqueExtraBold =>
      'assets/fonts/GalanoGrotesqueExtraBold.otf';

  /// File path: assets/fonts/GalanoGrotesqueExtraLight.otf
  String get galanoGrotesqueExtraLight =>
      'assets/fonts/GalanoGrotesqueExtraLight.otf';

  /// File path: assets/fonts/GalanoGrotesqueHeavy.otf
  String get galanoGrotesqueHeavy => 'assets/fonts/GalanoGrotesqueHeavy.otf';

  /// File path: assets/fonts/GalanoGrotesqueLight.otf
  String get galanoGrotesqueLight => 'assets/fonts/GalanoGrotesqueLight.otf';

  /// File path: assets/fonts/GalanoGrotesqueMedium.otf
  String get galanoGrotesqueMedium => 'assets/fonts/GalanoGrotesqueMedium.otf';

  /// File path: assets/fonts/GalanoGrotesqueRegular.otf
  String get galanoGrotesqueRegular =>
      'assets/fonts/GalanoGrotesqueRegular.otf';

  /// File path: assets/fonts/GalanoGrotesqueSemiBold.otf
  String get galanoGrotesqueSemiBold =>
      'assets/fonts/GalanoGrotesqueSemiBold.otf';

  /// File path: assets/fonts/GalanoGrotesqueThin.otf
  String get galanoGrotesqueThin => 'assets/fonts/GalanoGrotesqueThin.otf';

  /// List of all assets
  List<String> get values => [
        galanoGrotesqueBlack,
        galanoGrotesqueBold,
        galanoGrotesqueExtraBold,
        galanoGrotesqueExtraLight,
        galanoGrotesqueHeavy,
        galanoGrotesqueLight,
        galanoGrotesqueMedium,
        galanoGrotesqueRegular,
        galanoGrotesqueSemiBold,
        galanoGrotesqueThin
      ];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/Export.svg
  SvgGenImage get export => const SvgGenImage('assets/icons/Export.svg');

  /// File path: assets/icons/GitBranch.svg
  SvgGenImage get gitBranch => const SvgGenImage('assets/icons/GitBranch.svg');

  /// File path: assets/icons/Info.svg
  SvgGenImage get info => const SvgGenImage('assets/icons/Info.svg');

  /// File path: assets/icons/Scroll.svg
  SvgGenImage get scroll => const SvgGenImage('assets/icons/Scroll.svg');

  /// File path: assets/icons/ShieldCheck.svg
  SvgGenImage get shieldCheck =>
      const SvgGenImage('assets/icons/ShieldCheck.svg');

  /// File path: assets/icons/Star.svg
  SvgGenImage get star => const SvgGenImage('assets/icons/Star.svg');

  /// File path: assets/icons/logo.svg
  SvgGenImage get logo => const SvgGenImage('assets/icons/logo.svg');

  /// List of all assets
  List<SvgGenImage> get values =>
      [export, gitBranch, info, scroll, shieldCheck, star, logo];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/dog-photo.png
  AssetGenImage get dogPhoto =>
      const AssetGenImage('assets/images/dog-photo.png');

  /// File path: assets/images/splash_logo.png
  AssetGenImage get splashLogo =>
      const AssetGenImage('assets/images/splash_logo.png');

  /// List of all assets
  List<AssetGenImage> get values => [dogPhoto, splashLogo];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
