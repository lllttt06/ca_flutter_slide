import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Slide1 extends FlutterDeckSlideWidget {
  const Slide1()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/1',
            title: 'Title slide',
            footer: FlutterDeckFooterConfiguration(showFooter: false),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.title(
      title: 'Flutter × Rive',
      subtitle: '魅力的なインタラクティブアニメーション',
    );
  }
}
