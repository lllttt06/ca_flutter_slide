import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/auto_resized_text.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Slide1 extends FlutterDeckSlideWidget {
  const Slide1()
      : super(
          configuration: const FlutterDeckSlideConfiguration(route: '/1'),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AutoResizedText(
            'Flutter × Rive',
            textAreaHeight: context.slideSize.height * 0.1,
            style: context.text.displayLarge?.bold.copyWith(
              color: context.color.primary,
              height: 1.5,
            ),
          ),
          AutoResizedText(
            '魅力的なアニメーション',
            textAreaHeight: context.slideSize.height * 0.1,
            style: context.text.displayLarge?.bold.copyWith(
              color: context.color.primary,
              height: 1.5,
            ),
          ),
          const CGap(heightFactor: 0.1),
          AutoResizedText(
            '2024/3/19 吉田航己',
            textAreaHeight: context.slideSize.height * 0.1,
            style: context.text.displayMedium,
          ),
        ],
      ),
    );
  }
}
