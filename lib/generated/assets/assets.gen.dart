/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsDocsGen {
  const $AssetsDocsGen();

  /// File path: assets/docs/privacy_policy.md
  String get privacyPolicy => 'assets/docs/privacy_policy.md';

  /// File path: assets/docs/terms_and_conditions.md
  String get termsAndConditions => 'assets/docs/terms_and_conditions.md';

  /// List of all assets
  List<String> get values => [privacyPolicy, termsAndConditions];
}

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Sen-Bold.ttf
  String get senBold => 'assets/fonts/Sen-Bold.ttf';

  /// File path: assets/fonts/Sen-ExtraBold.ttf
  String get senExtraBold => 'assets/fonts/Sen-ExtraBold.ttf';

  /// File path: assets/fonts/Sen-Regular.ttf
  String get senRegular => 'assets/fonts/Sen-Regular.ttf';

  /// List of all assets
  List<String> get values => [senBold, senExtraBold, senRegular];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/bottle.png
  AssetGenImage get bottle => const AssetGenImage('assets/images/bottle.png');

  /// File path: assets/images/carrot.png
  AssetGenImage get carrot => const AssetGenImage('assets/images/carrot.png');

  /// File path: assets/images/custom_close_icon.png
  AssetGenImage get customCloseIcon =>
      const AssetGenImage('assets/images/custom_close_icon.png');

  /// File path: assets/images/dumbbells.png
  AssetGenImage get dumbbells =>
      const AssetGenImage('assets/images/dumbbells.png');

  /// File path: assets/images/google.png
  AssetGenImage get google => const AssetGenImage('assets/images/google.png');

  /// File path: assets/images/hike.png
  AssetGenImage get hike => const AssetGenImage('assets/images/hike.png');

  /// File path: assets/images/launcher_logo.png
  AssetGenImage get launcherLogo =>
      const AssetGenImage('assets/images/launcher_logo.png');

  /// File path: assets/images/logo.svg
  String get logo => 'assets/images/logo.svg';

  /// File path: assets/images/logo_name.svg
  String get logoName => 'assets/images/logo_name.svg';

  /// File path: assets/images/main_screen_person.png
  AssetGenImage get mainScreenPerson =>
      const AssetGenImage('assets/images/main_screen_person.png');

  /// File path: assets/images/man_login.png
  AssetGenImage get manLogin =>
      const AssetGenImage('assets/images/man_login.png');

  /// File path: assets/images/notification.png
  AssetGenImage get notification =>
      const AssetGenImage('assets/images/notification.png');

  /// File path: assets/images/notification_logo.png
  AssetGenImage get notificationLogo =>
      const AssetGenImage('assets/images/notification_logo.png');

  /// File path: assets/images/setting_icon.png
  AssetGenImage get settingIcon =>
      const AssetGenImage('assets/images/setting_icon.png');

  /// File path: assets/images/stars.png
  AssetGenImage get stars => const AssetGenImage('assets/images/stars.png');

  /// File path: assets/images/water_drop.svg
  String get waterDrop => 'assets/images/water_drop.svg';

  /// File path: assets/images/weight.png
  AssetGenImage get weight => const AssetGenImage('assets/images/weight.png');

  /// File path: assets/images/woman_auth.png
  AssetGenImage get womanAuth =>
      const AssetGenImage('assets/images/woman_auth.png');

  /// File path: assets/images/woman_login.png
  AssetGenImage get womanLogin =>
      const AssetGenImage('assets/images/woman_login.png');

  /// List of all assets
  List<dynamic> get values => [
        bottle,
        carrot,
        customCloseIcon,
        dumbbells,
        google,
        hike,
        launcherLogo,
        logo,
        logoName,
        mainScreenPerson,
        manLogin,
        notification,
        notificationLogo,
        settingIcon,
        stars,
        waterDrop,
        weight,
        womanAuth,
        womanLogin
      ];
}

class $AssetsTranslationsGen {
  const $AssetsTranslationsGen();

  /// File path: assets/translations/en.json
  String get en => 'assets/translations/en.json';

  /// File path: assets/translations/uk.json
  String get uk => 'assets/translations/uk.json';

  /// List of all assets
  List<String> get values => [en, uk];
}

class Assets {
  Assets._();

  static const $AssetsDocsGen docs = $AssetsDocsGen();
  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsTranslationsGen translations = $AssetsTranslationsGen();
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
