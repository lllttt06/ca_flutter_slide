import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class SelfIntroductionSlide extends FlutterDeckSlideWidget {
  const SelfIntroductionSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/blank-slide',
            header: FlutterDeckHeaderConfiguration(
              title: 'Blank slide template',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const Text('Here goes the content of the slide'),
    );
  }
}
