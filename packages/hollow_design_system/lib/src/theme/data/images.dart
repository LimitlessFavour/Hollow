// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars

import 'dart:typed_data';

import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hollow_design_system/src/utils/named.dart';

class AppImagesData extends Equatable {
  const AppImagesData({
    required this.appLogo,
    required this.backgroundPattern,
    //svgs
    required this.apple,
    //pngs
    required this.discoverEventsBackground,
  });

  factory AppImagesData.regular({required PictureProvider appLogo}) =>
      AppImagesData(
        appLogo: appLogo,
        backgroundPattern: MemoryImage(kTransparentImage),
        //svgs
        apple: 'apple'.svgPicture,
        //pngs
        discoverEventsBackground: 'discover_events_background'.pngPicture,
      );

  // using the same image data for both regular and dark modes
  // Can easily chnage if different images are needed.
  factory AppImagesData.dark({required PictureProvider appLogo}) =>
      AppImagesData(
        appLogo: appLogo,
        backgroundPattern: MemoryImage(kTransparentImage),
        //svgs
        apple: 'apple'.svgPicture,
        //pngs
        discoverEventsBackground: 'discover_events_background'.pngPicture,
      );

  final PictureProvider appLogo;
  final ImageProvider backgroundPattern;
  //svgs
  final PictureProvider apple;
  //pngs
  final ImageProvider discoverEventsBackground;

  
  @override
  List<Object?> get props => [
        appLogo.named('appLogo'),
        backgroundPattern.named('backgroundPattern'),
        //svgs
        apple.named('apple'),
        //pngs
        discoverEventsBackground.named('discoverEventsBackground'),
      ];

  AppImagesData withAppLogo(PictureProvider appLogo) {
    return AppImagesData(
      appLogo: appLogo,
      apple: apple,
      backgroundPattern: backgroundPattern,
      discoverEventsBackground: discoverEventsBackground,
    );
  }

  AppImagesData withBackgroundPattern(ImageProvider backgroundPattern) {
    return AppImagesData(
      appLogo: appLogo,
      apple: apple,
      backgroundPattern: backgroundPattern,
      discoverEventsBackground: discoverEventsBackground,
    );
  }
}

final kTransparentImage = Uint8List.fromList(<int>[
  0x89,
  0x50,
  0x4E,
  0x47,
  0x0D,
  0x0A,
  0x1A,
  0x0A,
  0x00,
  0x00,
  0x00,
  0x0D,
  0x49,
  0x48,
  0x44,
  0x52,
  0x00,
  0x00,
  0x00,
  0x01,
  0x00,
  0x00,
  0x00,
  0x01,
  0x08,
  0x06,
  0x00,
  0x00,
  0x00,
  0x1F,
  0x15,
  0xC4,
  0x89,
  0x00,
  0x00,
  0x00,
  0x0A,
  0x49,
  0x44,
  0x41,
  0x54,
  0x78,
  0x9C,
  0x63,
  0x00,
  0x01,
  0x00,
  0x00,
  0x05,
  0x00,
  0x01,
  0x0D,
  0x0A,
  0x2D,
  0xB4,
  0x00,
  0x00,
  0x00,
  0x00,
  0x49,
  0x45,
  0x4E,
  0x44,
  0xAE,
]);

///Picture provider extension from asset path
extension _PictureProviderX on String {
  ///[ExactAssetPicture] frrom asset path
  PictureProvider get svgPicture => ExactAssetPicture(
        SvgPicture.svgStringDecoderBuilder,
        'assets/images/$this.svg',
        package: 'hollow_design_system',
      );
  ImageProvider get pngPicture => AssetImage(
        'assets/images/$this.png',
        package: 'hollow_design_system',
      );
}
