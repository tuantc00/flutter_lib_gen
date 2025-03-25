/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class Assets {
  const Assets._();

  static const SvgGenImage addText = SvgGenImage('assets/add_text.svg');
  static const SvgGenImage combineMode = SvgGenImage('assets/combine_mode.svg');
  static const SvgGenImage combineText = SvgGenImage('assets/combine_text.svg');
  static const SvgGenImage deleteText = SvgGenImage('assets/delete_text.svg');
  static const SvgGenImage logo = SvgGenImage('assets/logo.svg');
  static const SvgGenImage logoPackage = SvgGenImage('assets/logo_package.svg');
  static const SvgGenImage phoneLogo = SvgGenImage('assets/phone_logo.svg');
  static const SvgGenImage productCart = SvgGenImage('assets/product_cart.svg');
  static const SvgGenImage profitManager = SvgGenImage(
    'assets/profit_manager.svg',
  );
  static const SvgGenImage refreshText = SvgGenImage('assets/refresh_text.svg');
  static const SvgGenImage removeText = SvgGenImage('assets/remove_text.svg');
  static const SvgGenImage shilfManager = SvgGenImage(
    'assets/shilf_manager.svg',
  );
  static const SvgGenImage shopLogo = SvgGenImage('assets/shop_logo.svg');
  static const SvgGenImage splitMode = SvgGenImage('assets/split_mode.svg');
  static const SvgGenImage splitText = SvgGenImage('assets/split_text.svg');
  static const SvgGenImage userInfor = SvgGenImage('assets/user_infor.svg');
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

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
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
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter:
          colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
