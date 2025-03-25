/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class Assets {
  const Assets._();

  static const String addText = 'assets/add_text.svg';
  static const String combineMode = 'assets/combine_mode.svg';
  static const String combineText = 'assets/combine_text.svg';
  static const String deleteText = 'assets/delete_text.svg';
  static const String logo = 'assets/logo.svg';
  static const String logoPackage = 'assets/logo_package.svg';
  static const String phoneLogo = 'assets/phone_logo.svg';
  static const String productCart = 'assets/product_cart.svg';
  static const String profitManager = 'assets/profit_manager.svg';
  static const String refreshText = 'assets/refresh_text.svg';
  static const String removeText = 'assets/remove_text.svg';
  static const String shilfManager = 'assets/shilf_manager.svg';
  static const String shopLogo = 'assets/shop_logo.svg';
  static const String splitMode = 'assets/split_mode.svg';
  static const String splitText = 'assets/split_text.svg';
  static const String userInfor = 'assets/user_infor.svg';
  static const AssetGenImage z6024847751787148cf848f4d7d8cc6d472e9919dd7103 =
      AssetGenImage(
    'assets/z6024847751787_148cf848f4d7d8cc6d472e9919dd7103.png',
  );

  /// List of all assets
  static List<dynamic> get values => [
        addText,
        combineMode,
        combineText,
        deleteText,
        logo,
        logoPackage,
        phoneLogo,
        productCart,
        profitManager,
        refreshText,
        removeText,
        shilfManager,
        shopLogo,
        splitMode,
        splitText,
        userInfor,
        z6024847751787148cf848f4d7d8cc6d472e9919dd7103,
      ];
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
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

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
